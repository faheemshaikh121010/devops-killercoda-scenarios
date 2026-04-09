
---

## ✅ step1/verify.sh

```bash id="p0mf0n"
#!/bin/bash

kubectl get deploy demo-app >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "❌ Deployment not found"
  exit 1
fi

replicas=$(kubectl get deploy demo-app -o jsonpath='{.spec.replicas}')
if [ "$replicas" != "1" ]; then
  echo "❌ Deployment should have 1 replica"
  exit 1
fi

echo "✅ Step 1 Passed"