
helm repo add minio https://charts.min.io/

helm repo update

helm install minio minio/minio --namespace minio --create-namespace -f scripts/minio-values.yaml

# kubectl port-forward svc/minio-console 9001:9001 -n minio

# kubectl exec -it deploy/minio -n minio -- printenv | grep MINIO