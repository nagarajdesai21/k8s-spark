# docker build 
docker build -t livy-server .

# docker run 
docker run -p 8998:8998 livy-server

# test connection
curl -X POST -H "Content-Type: application/json" \
    -d '{
        "kind": "pyspark",
        "conf": {
          "spark.kubernetes.container.image": "apache/spark:3.5.0"
        }
    }' \
  http://localhost:8998/sessions