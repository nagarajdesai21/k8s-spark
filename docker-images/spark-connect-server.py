from pyspark.sql import SparkSession
import time

print("Hello")
spark = SparkSession.builder.getOrCreate()
print("Hello2")
print("Spark Connect server is running. Waiting for client connections...")
while True:
    time.sleep(600)
