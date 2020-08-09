FROM tomcat-jre11:8.5.57

COPY target/helloworld.war $CATALINA_HOME/webapps/helloworld.war

COPY tomcat_server_config/ $CATALINA_HOME/

EXPOSE 9090