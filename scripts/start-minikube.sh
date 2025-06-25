minikube start \
    --extra-config=apiserver.service-node-port-range=15000-32767 \
    --driver=docker \
    --cpus=4 \
    --memory=6144 \
    --disk-size=20g

minikube addons enable ingress

kubectl config use-context minikube

minikube status
