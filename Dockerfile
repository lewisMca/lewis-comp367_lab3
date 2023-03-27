FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/my-web-app.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
