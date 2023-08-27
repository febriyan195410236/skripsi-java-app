# FROM public.ecr.aws/docker/library/maven:3.9 AS builder
# WORKDIR /app
# COPY pom.xml .
# COPY src/ src/
# RUN mvn install
# RUN ls -alh

# FROM eclipse-temurin:17-jdk-alpine
# WORKDIR /app
# COPY --from=builder /app/target/*.jar app.jar
# ENTRYPOINT ["java","-jar","app.jar"]



FROM public.ecr.aws/docker/library/eclipse-temurin:17-jdk-jammy
 
WORKDIR /app
 
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
 
COPY src ./src
 
EXPOSE 8080
CMD ["./mvnw", "spring-boot:run"]