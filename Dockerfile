FROM java:6
MAINTAINER Wajeeha Ahmed, wajeeha@aurorasolutions.io

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.75/bin/apache-tomcat-7.0.75.tar.gz
RUN tar xzf apache-tomcat-7.0.75.tar.gz

COPY target/ROOT.war apache-tomcat-7.0.75/webapps/ROOT.war

RUN rm -rf apache-tomcat-7.0.75/webapps/ROOT

CMD apache-tomcat-7.0.75/bin/startup.sh && tail -f apache-tomcat-7.0.75/logs/catalina.out

EXPOSE 8080
