FROM apache/spark:3.5.5

RUN curl -L -o /opt/spark/jars/spark-connect_2.12-3.5.5.jar \
    https://repo1.maven.org/maven2/org/apache/spark/spark-connect_2.12/3.5.5/spark-connect_2.12-3.5.5.jar

# CMD ["/opt/spark/sbin/start-connect-server.sh"]

# docker build -t custom-spark-image-with-spark-connect-jar .
# minikube image load custom-spark-image-with-spark-connect-jar