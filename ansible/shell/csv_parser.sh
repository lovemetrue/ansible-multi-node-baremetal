#!/bin/bash

# Проверяем, передан ли файл как аргумент
if [ $# -ne 1 ]; then
    echo "Использование: $0 <имя_файла.csv>"
    exit 1
fi

input_file="$1"

# Проверяем, существует ли файл
if [ ! -f "$input_file" ]; then
    echo "Файл '$input_file' не найден!"
    exit 1
fi

# Парсим CSV и ищем строки с error/warn/warning (игнорируем регистр)
awk '
BEGIN {
    FS=","   # Устанавливаем разделитель полей (для CSV)
    IGNORECASE=1  # Игнорируем регистр
}
/error|warn|warning/ {
    print $0  # Выводим всю строку
}
' "$input_file"