# Use Java 21 JRE base image
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy JAR file into container
COPY target/java21-demo-1.0.0.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]

