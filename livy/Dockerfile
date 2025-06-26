FROM apache/spark:3.5.1

ENV LIVY_VERSION=0.8.0-incubating \
    LIVY_HOME=/opt/livy \
    SPARK_CONF_DIR=/opt/spark/conf

USER root
RUN apt-get update && apt-get install -y wget curl unzip && rm -rf /var/lib/apt/lists/*

RUN wget -q https://archive.apache.org/dist/incubator/livy/${LIVY_VERSION}/apache-livy-${LIVY_VERSION}_2.12-bin.zip -O /tmp/livy.zip && \
    unzip /tmp/livy.zip -d /opt && \
    mv /opt/apache-livy-${LIVY_VERSION}_2.12-bin $LIVY_HOME && \
    rm /tmp/livy.zip


# ENV KUBECTL_VERSION=v1.30.1

# RUN curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/arm64/kubectl" && \
#     chmod +x kubectl && \
#     mv kubectl /usr/local/bin/
# # Verify kubectl version
# RUN kubectl version --client

ENV KUBECONFIG=/root/.kube/config

COPY .ca.crt /usr/local/share/ca-certificates/minikube-ca.crt
RUN update-ca-certificates

RUN keytool -importcert \
  -trustcacerts \
  -alias minikubeCA \
  -file /usr/local/share/ca-certificates/minikube-ca.crt \
  -keystore $JAVA_HOME/lib/security/cacerts \
  -storepass changeit \
  -noprompt

# Create cert directory and copy Minikube ca.crt
RUN mkdir -p /root/.minikube
COPY .ca.crt /root/.minikube/ca.crt

COPY livy.conf $LIVY_HOME/conf
COPY spark-defaults.conf $LIVY_HOME/conf
ENV PATH="$PATH:$LIVY_HOME/bin"
ENV LIVY_LOG_DIR=$LIVY_HOME/logs

RUN mkdir -p $LIVY_LOG_DIR

EXPOSE 8998

ENV LIVY_JAVA_OPTS="-Dkubernetes.disable.hostname.verification=true"
ENV JAVA_TOOL_OPTIONS="-Dfabric8.kubernetes.trust.certificates=true -Dfabric8.kubernetes.disable.hostname.verification=true"
ENV JAVA_OPTS="-Dkubernetes.disable.hostname.verification=true"
CMD ["livy-server"]