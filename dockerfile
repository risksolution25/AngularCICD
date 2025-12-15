FROM tomcat:9.0-jdk17

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy Angular WAR into Tomcat
COPY angularcicd.war /usr/local/tomcat/webapps/angularcicd.war

EXPOSE 8082

CMD ["catalina.sh", "run"]
