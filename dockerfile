FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY dist/angularcicd/ /usr/local/tomcat/webapps/angularcicd/

EXPOSE 8080

CMD ["catalina.sh", "run"]
