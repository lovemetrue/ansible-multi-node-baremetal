#!/bin/bash

set -euo pipefail

TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="/var/tmp/k8s-scale-backup-$TIMESTAMP.json"

echo "📦 Получаем все pods с типами Deployments/StatefulSets на всех нодах"

kubectl get pods --all-namespaces -o json | jq -r \
  '.items[] | select(.metadata.ownerReferences[0].kind=="ReplicaSet" or .metadata.ownerReferences[0].kind=="StatefulSet") | [.metadata.namespace, .metadata.ownerReferences[0].kind, .metadata.ownerReferences[0].name] | @tsv' \
  | sort -u \
  | while IFS=$'\t' read -r NS KIND NAME; do
    if [[ "$KIND" == "ReplicaSet" ]]; then
        DEPLOY_NAME=$(kubectl -n "$NS" get rs "$NAME" -o jsonpath='{.metadata.ownerReferences[0].name}' 2>/dev/null || echo "")
        if [[ -n "$DEPLOY_NAME" ]]; then
            REPLICAS=$(kubectl -n "$NS" get deploy "$DEPLOY_NAME" -o jsonpath='{.spec.replicas}')
            echo "{\"namespace\":\"$NS\",\"type\":\"Deployment\",\"name\":\"$DEPLOY_NAME\",\"replicas\":$REPLICAS}" >> "$BACKUP_FILE"
            echo "🔻 Scaling deployment $NS/$DEPLOY_NAME -> 0"
            kubectl -n "$NS" scale deploy "$DEPLOY_NAME" --replicas=0
        fi
    elif [[ "$KIND" == "StatefulSet" ]]; then
        REPLICAS=$(kubectl -n "$NS" get sts "$NAME" -o jsonpath='{.spec.replicas}')
        echo "{\"namespace\":\"$NS\",\"type\":\"StatefulSet\",\"name\":\"$NAME\",\"replicas\":$REPLICAS}" >> "$BACKUP_FILE"
        echo "🔻 Scaling statefulset $NS/$NAME -> 0"
        kubectl -n "$NS" scale sts "$NAME" --replicas=0
    fi
done

echo "✅ Масштабирование всех рабочих нагрузок завершено. Бэкап: $BACKUP_FILE"