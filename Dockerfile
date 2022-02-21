FROM        java:8
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar .
CMD         ["java", "-jar", "shipping.jar"]