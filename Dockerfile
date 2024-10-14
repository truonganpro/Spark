FROM ubuntu:20.04

# Cài đặt các gói cần thiết và Java 8
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk

# Thiết lập JAVA_HOME cho Java 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

# Kiểm tra phiên bản Java
RUN java -version