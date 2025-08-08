#helm repo add otwld https://helm.otwld.com/
#helm repo update
helm upgrade --install ollama otwld/ollama --namespace user --create-namespace -f values.yaml
