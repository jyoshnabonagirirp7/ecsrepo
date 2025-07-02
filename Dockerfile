FROM eclipse-temurin:17-jdk

# Install curl (optional if not used in runtime)
RUN apt-get update && apt-get install -y curl

# Set working directory (optional but good practice)
WORKDIR /app

# Create a mountable volume for temp files
VOLUME /tmp

# Expose the app port
EXPOSE 8080

# Copy the JAR file into the container
ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar

# Set the entrypoint to run the app
ENTRYPOINT ["java", "-jar", "/app/springboot-aws-deploy-service.jar"]
