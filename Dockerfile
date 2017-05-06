FROM  v4java/mesos
MAINTAINER vincent <15091627595@163.com>

ENV MESOS_NATIVE_LIBRARY /usr/local/lib/libmesos.so

ENV SPARK_VERSION 2.1.0-bin-hadoop2.6
RUN apt-get update
RUN apt-get install curl -y
RUN curl -O "http://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.1.0/spark-2.1.0-bin-hadoop2.6.tgz" 
RUN tar xf spark-2.1.0-bin-hadoop2.6.tgz
RUN rm spark-2.1.0-bin-hadoop2.6.tgz
RUN    mv spark-2.1.0-bin-hadoop2.6 /opt/spark 

