#!/bin/bash

set -e

DOMAIN="jesus.is.lord"
EMAIL="legkodogatca@gmail.com"
MINIO_CERT_DIR="/etc/minio/certs"

# === Проверка root-доступа ===
if [[ $EUID -ne 0 ]]; then
   echo "[ERROR] Пожалуйста, запускайте скрипт от root"
   exit 1
fi

# === Проверка зависимостей ===
echo "[INFO] Проверка зависимостей..."

DEPS=(certbot openssl socat curl)

for dep in "${DEPS[@]}"; do
  if ! command -v $dep &>/dev/null; then
    echo "[ERROR] Требуется установить: $dep"
    echo "Установка зависимостей (Debian/Ubuntu)..."
    apt update && apt install -y $dep
  fi
done

# === Проверка открытого порта 80 ===
echo "[INFO] Проверка, открыт ли порт 80..."

if ss -tuln | grep -q ":80 "; then
  echo "[ERROR] Порт 80 уже занят. Освободите его (например, остановите nginx/apache)"
  exit 1
fi

# === Получение сертификата через standalone certbot ===
echo "[INFO] Получаем сертификат для $DOMAIN с помощью Let's Encrypt..."

certbot certonly \
  --standalone \
  --preferred-challenges http \
  --non-interactive \
  --agree-tos \
  --register-unsafely-without-email \
  -d "$DOMAIN"

# === Проверка успешности ===
CERT_PATH="/etc/letsencrypt/live/$DOMAIN/fullchain.pem"
KEY_PATH="/etc/letsencrypt/live/$DOMAIN/privkey.pem"

if [[ ! -f "$CERT_PATH" || ! -f "$KEY_PATH" ]]; then
  echo "[ERROR] Сертификат не был создан!"
  exit 1
fi

echo "[OK] Сертификат успешно получен!"

# === Копирование сертификатов в папку MinIO ===
echo "[INFO] Копируем сертификаты в папку MinIO: $MINIO_CERT_DIR"

cp "$CERT_PATH" "${MINIO_CERT_DIR}/public.crt"
cp "$KEY_PATH" "${MINIO_CERT_DIR}/private.key"

chmod -R 777 "${MINIO_CERT_DIR}/private.key"
chmod -R 777  "${MINIO_CERT_DIR}/public.crt"

# === Перезапуск MinIO (если systemd) ===
if systemctl is-active --quiet minio; then
  echo "[INFO] Перезапускаем MinIO..."
  systemctl restart minio
  echo "[OK] MinIO перезапущен."
else
  echo "[WARN] MinIO не найден как systemd-сервис. Перезапусти его вручную."
fi

# === Проверка результата ===
echo "[INFO] Проверка сертификата через openssl..."
openssl x509 -in "${MINIO_CERT_DIR}/public.crt" -noout -subject -issuer -dates

echo "[DONE] Всё готово. MinIO теперь использует Let's Encrypt сертификат для $DOMAIN"