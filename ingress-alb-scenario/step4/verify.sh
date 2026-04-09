#!/bin/bash

kubectl get deploy demo-app >/dev/null 2>&1 || { echo "❌ Deployment missing"; exit 1; }
kubectl get svc demo-service >/dev/null 2>&1 || { echo "❌ Service missing"; exit 1; }
kubectl get ingress demo-ingress >/dev/null 2>&1 || { echo "❌ Ingress missing"; exit 1; }

echo "🎉 All Steps Completed Successfully!"