#!/bin/bash

echo "Checking deployment..."
kubectl get deploy demo-app >/dev/null 2>&1 || { echo "❌ Deployment missing"; exit 1; }

echo "Checking replicas..."
replicas=$(kubectl get deploy demo-app -o jsonpath='{.spec.replicas}')
[ "$replicas" == "1" ] || { echo "❌ Replica count wrong"; exit 1; }

echo "Checking service..."
kubectl get svc demo-service >/dev/null 2>&1 || { echo "❌ Service missing"; exit 1; }

type=$(kubectl get svc demo-service -o jsonpath='{.spec.type}')
[ "$type" == "NodePort" ] || { echo "❌ Service not NodePort"; exit 1; }

echo "Checking ingress..."
kubectl get ingress demo-ingress >/dev/null 2>&1 || { echo "❌ Ingress missing"; exit 1; }

echo "🎉 All checks passed!"