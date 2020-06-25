FROM maven:3.6.3-jdk-8 AS maven
WORKDIR /usr/myapp
COPY . .
RUN mvn clean package

FROM tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=maven /usr/myapp/target/*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
