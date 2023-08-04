# Stage 1: Build the Java application
FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn package -DskipTests

# Stage 2: Create a lightweight image to run the Java application
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/hospital-management-1.0.0.jar /app/hospital-management.jar
EXPOSE 8080
CMD ["java", "-jar", "hospital-management.jar"]
