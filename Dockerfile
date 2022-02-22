FROM        maven
RUN         mkdir /app
WORKDIR     /app
COPY        src/ src/
COPY        pom.xml .
RUN         mvn clean package
ENTRYPOINT  ["java", "-jar", "target/shipping-1.0.jar"]