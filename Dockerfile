FROM tomcat:10.1-jdk17
RUN cp -r /usr/local/tomcat/webapps.dist/. /usr/local/tomcat/webapps/
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY target/sample-webapp.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080