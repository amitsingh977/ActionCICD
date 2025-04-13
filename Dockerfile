FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre
COPY --from=build /app/target/your-app.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
