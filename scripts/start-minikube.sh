minikube start \
    # --extra-config=apiserver.service-node-port-range=15000-32767 \
    --apiserver-ips="192.168.49.2" \
    --driver=docker \
    --cpus=4 \
    --memory=6144 \
    --disk-size=20g

minikube addons enable ingress

kubectl config use-context minikube

minikube status


# helm install spark-connect/spark-connect \
#   --set image.repository=spark-connect-server \
#   --set image.tag=latest \
#   --set sparkConnect.port=15002 \
#   --set service.type=NodePort