FROM tomcat:8.0

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar $PROJECT_HOME/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar

WORKDIR $PROJECT_HOME
