FROM tomcat:9.0-jdk17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy Angular dist output directly into ROOT app
COPY dist/angularcicd/ /usr/local/tomcat/webapps/angularcicd/

EXPOSE 4200

CMD ["catalina.sh", "run"]
