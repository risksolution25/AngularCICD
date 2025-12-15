FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

# IMPORTANT: copy browser folder
COPY dist/angularcicd/browser/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
CMD ["catalina.sh", "run"]
