# 1&2 create ns & secret
kubectl create ns nim-operator
helm install nim-operator nvidia/k8s-nim-operator --create-namespace -n nim-operator
export NGC_API_KEY="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"



kubectl create ns nim-service
kubectl create secret -n nim-service docker-registry ngc-secret \
    --docker-server=nvcr.io \
    --docker-username='$oauthtoken' \
    --docker-password=$NGC_API_KEY

kubectl create secret -n nim-service generic ngc-api-secret \
    --from-literal=NGC_API_KEY=$NGC_API_KEY
# 4 安裝 nemo-operator
#export VERSION=25.6.0
#export NGC_API_KEY="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"
#kubectl create secret -n nemo-operator docker-registry ngc-secret \
#    --docker-server=nvcr.io \
#    --docker-username='$oauthtoken' \
#    --docker-password=$NGC_API_KEY



