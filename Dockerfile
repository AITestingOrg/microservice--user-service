FROM openjdk:8-jdk-alpine
MAINTAINER Juan Sotomayor "jsoto128@fiu.edu"
VOLUME /tmp
ADD build/libs/microservice--user-service-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]