FROM openjdk:21-jdk-slim

WORKDIR /app

COPY build/libs/app-1.jar /app/app.jar

CMD ["java", "-jar", "app.jar"]
