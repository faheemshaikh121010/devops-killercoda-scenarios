
---

## step3/verify.sh

```bash id="mp33lp"
#!/bin/bash

kubectl get ingress demo-ingress >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "❌ Ingress not found"
  exit 1
fi

path=$(kubectl get ingress demo-ingress -o jsonpath='{.spec.rules[0].http.paths[0].path}')
if [ "$path" != "/" ]; then
  echo "❌ Path should be /"
  exit 1
fi

echo "✅ Step 3 Passed"