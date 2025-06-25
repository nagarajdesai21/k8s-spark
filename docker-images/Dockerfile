FROM apache/spark:3.5.5

RUN curl -L -o /opt/spark/jars/spark-connect_2.12-3.5.5.jar \
    https://repo1.maven.org/maven2/org/apache/spark/spark-connect_2.12/3.5.5/spark-connect_2.12-3.5.5.jar

# USER root
# RUN apt-get update && apt-get install -y python3 python3-pip
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt
# COPY spark-connect-server.py /tmp/spark-connect-server.py
# COPY entrypoint.sh /tmp/entrypoint.sh

# FROM apache/spark:3.5.5
# USER root
# RUN apt-get update && apt-get install -y python3
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt
# COPY spark-connect-server.py /opt/spark-connect-server.py
# ENTRYPOINT ["python3", "/opt/spark-connect-server.py"]
# ENTRYPOINT ["/tmp/entrypoint.sh"]

# CMD ["/opt/spark/sbin/start-connect-server.sh"]

# docker build -t custom-spark-image-with-spark-connect-jar .
# minikube image load custom-spark-image-with-spark-connect-jar