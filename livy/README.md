# docker build 
docker build -t livy-server .

# docker run 
docker run -p 8998:8998 livy-server

# test connection
curl -X POST -H "Content-Type: application/json" \
    -d '{
        "kind": "pyspark",
        "conf": {
          "spark.kubernetes.container.image": "apache/spark:3.5.0",
          "spark.kubernetes.file.upload.path": "s3a://spark-upload/",
          "spark.jars.packages": "org.apache.hadoop:hadoop-aws:3.3.4,com.amazonaws:aws-java-sdk-bundle:1.12.262",
          "spark.hadoop.fs.s3a.endpoint": "http://minio.minio.svc.cluster.local:9000",
          "spark.hadoop.fs.s3a.access.key": "minioadmin",
          "spark.hadoop.fs.s3a.secret.key": "minioadmin",
          "spark.hadoop.fs.s3a.path.style.access": "true"
        }
    }' \
  http://localhost:8998/sessions