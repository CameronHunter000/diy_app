FROM amazoncorretto:20.0.1-alpine3.17

RUN java --version

WORKDIR /opt/java_service

COPY build.gradle .
COPY settings.gradle .
COPY gradlew .
COPY gradle gradle
COPY src src

RUN ./gradlew build --no-daemon

EXPOSE 8080

CMD ["./gradlew", "bootRun"]
