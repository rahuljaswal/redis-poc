ARG FROM_TAG=11.0.4-jre
#11.0.4-jre
FROM openjdk:$FROM_TAG

# Make homedir
RUN mkdir -p /app
# Export APP_HOME
ENV APP_HOME /app

EXPOSE 8080 9090 8000

COPY build/libs/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java","-jar", "./app.jar"]