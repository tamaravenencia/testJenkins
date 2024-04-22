FROM tomcat:latest

COPY /webapp/target/*.war /usr/local/tomcat/webapps
COPY /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

ENTRYPOINT ["catalina.sh", "jpda", "run"]

