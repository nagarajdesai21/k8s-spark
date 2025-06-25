FROM apache/spark:3.5.1

ENV LIVY_VERSION=0.8.0-incubating \
    LIVY_HOME=/opt/livy

USER root
RUN apt-get update && apt-get install -y wget curl unzip && rm -rf /var/lib/apt/lists/*

RUN wget -q https://archive.apache.org/dist/incubator/livy/${LIVY_VERSION}/apache-livy-${LIVY_VERSION}_2.12-bin.zip -O /tmp/livy.zip && \
    unzip /tmp/livy.zip -d /opt && \
    mv /opt/apache-livy-${LIVY_VERSION}_2.12-bin $LIVY_HOME && \
    rm /tmp/livy.zip

COPY livy.conf $LIVY_HOME/conf
ENV PATH="$PATH:$LIVY_HOME/bin"
ENV LIVY_LOG_DIR=$LIVY_HOME/logs

RUN mkdir -p $LIVY_LOG_DIR

EXPOSE 8998

CMD ["livy-server"]