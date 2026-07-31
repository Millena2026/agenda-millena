FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x ./mvnw
RUN ./mvnw clean install -DskipTests

EXPOSE 8081

CMD ["java", "-jar", "target/agenda-millena.jar"]