FROM eclipse-temurin:11
EXPOSE 8761
COPY ./target/*.jar /app/eureka.jar
CMD ["java", "-jar", "/app/eureka.jar","--spring.profiles.active=docker"]