From ubuntu
RUN apt update -y
RUN apt install openjdk-11-jdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz .
RUN tar -zxvf apache-tomcat-9.0.75.tar.gz
RUN mv apache-tomcat-9.0.75/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]


