FROM tomcat:9-alpine
MAINTAINER DILEEP PRITHVI
ADD target/*.war /usr/local/tomcat/webapps/
RUN value=`cat conf/server.xml` && echo "${value//8080/8050}" >| conf/server.xml
CMD ["catalina.sh", "run"]
