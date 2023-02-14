FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY ./target/hello-1.0.war /usr/app/
WORKDIR /usr/app
ENTRYPOINT ["java", "-war", "hello-1.0.war"]