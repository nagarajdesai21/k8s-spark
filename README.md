minikube image load custom-spark-image-with-spark-connect-jar

# get cluster url
kubectl cluster-info

MINIO_ROOT_USER=qJ1e6yPD63g5iM9ZG7Pl
MINIO_ROOT_PASSWORD=mBDBPHVA7DlnVW9fnJgSzoXnGgFPFzQkb4WYd6iB


# get cluster api endpoint
kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}'