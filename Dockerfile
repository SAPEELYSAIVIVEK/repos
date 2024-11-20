# Use an official OpenJDK runtime as the base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Java source code into the container
COPY app.java .

# Compile the Java application
RUN javac app.java

# Define the command to run the Java application
CMD ["java", "app"]
