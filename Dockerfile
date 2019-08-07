
FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD /target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]




FROM tomcat:latest
VOLUME /opt/newfolder
COPY /target/*.war /usr/local/tomcat/webapps/
EXPOSE
  -8080:8080
