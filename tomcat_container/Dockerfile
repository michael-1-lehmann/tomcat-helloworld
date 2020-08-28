FROM mlehmann007/samples:Azul-Zulu_Java-11.0.7

MAINTAINER Michael Lehmann <michael.3.lehmann@mailbox.org>

ENV TOMCAT_MINOR_VERSION 8.5.57
ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz && \
 curl http://archive.apache.org/dist/tomcat/tomcat-8/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz.sha512 | sha512sum -c - && \
 gunzip apache-tomcat-*.tar.gz && \
 tar xf apache-tomcat-*.tar && \
 rm apache-tomcat-*.tar && mv apache-tomcat* ${CATALINA_HOME} && \
 rm -rf ${CATALINA_HOME}/webapps/examples \
  ${CATALINA_HOME}/webapps/docs ${CATALINA_HOME}/webapps/ROOT \
  ${CATALINA_HOME}/webapps/manager ${CATALINA_HOME}/webapps/host-manager \
  ${CATALINA_HOME}/RELEASE-NOTES ${CATALINA_HOME}/RUNNING.txt \
  ${CATALINA_HOME}/bin/*.bat ${CATALINA_HOME}/bin/*.tar.gz && \
  chmod -R +rX ${CATALINA_HOME}/. && \
  chmod 777 ${CATALINA_HOME}/logs ${CATALINA_HOME}/temp ${CATALINA_HOME}/work

WORKDIR /opt/tomcat
EXPOSE 8080

VOLUME [ "/opt/tomcat" ]

ENTRYPOINT [ "/opt/tomcat/bin/catalina.sh" ]
CMD [ "run"]