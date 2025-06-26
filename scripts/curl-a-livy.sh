curl -X POST -H "Content-Type: application/json" \
  -d '{
        "kind": "pyspark",
        "conf": {
            "spark.kubernetes.authenticate.driver.serviceAccountName": "spark"
        }
      }' \
  http://localhost:8998/sessions