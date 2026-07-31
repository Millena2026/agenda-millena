FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY .
RUN ./mvnw clean install -DskipTests
EXPOSE 8081
CMD ["java", "-jar", "target/*.jar"]