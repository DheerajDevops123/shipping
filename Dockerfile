FROM        maven
RUN         mkdir /app
WORKDIR     /app
COPY        src/ src/
COPY        pom.xml .
RUN         mvn clean package
CMD         ["java", "-jar", "shipping.jar"]