kubectl create namespace spark-operator

helm repo add --force-update spark-operator https://kubeflow.github.io/spark-operator

helm install spark-operator spark-operator/spark-operator \
    --namespace spark-operator \
    --set setSparkJonNamespace=default \
    --set webhook.enable=true \
    --set setSparkJobLabelSelectorFilter="spark-role" \
    --set enableWebhook=true \
    --set createSparkJobNamespace=false \
    --wait

# kubectl apply -f k8s/spark-pi.yaml

kubectl get sparkapplications
kubectl get pods
kubectl logs spark-pi-driver
