FROM mlehmann007/samples:Tomcat-8.5.57-Zulu_Java-11.0.7

COPY target/helloworld.war $CATALINA_HOME/webapps/helloworld.war

COPY tomcat_server_config/ $CATALINA_HOME/

EXPOSE 9090