FROM openjdk:8-jdk-alpine
# Defines work dir
WORKDIR /app
# Copy packaged artifact to work dir
ADD target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar   /app/app.jar
# Java options: memory, system variables
ENV JAVA_OPTS=""
# Command to launch container
CMD java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar app.jar