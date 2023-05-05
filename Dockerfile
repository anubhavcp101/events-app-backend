# Use Corretto base image for Java/Maven
FROM maven:3-amazoncorretto-17

# Change the working directory
WORKDIR /app

# Copy application code.
COPY . .

# Install dependencies & build.
RUN mvn clean package

# Start the Spring Boot app
CMD ["java", "-jar", "target/apiServer-0.0.1.jar"]
