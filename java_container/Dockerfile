# Derived from https://hub.docker.com/r/azul/zulu-openjdk-centos and https://github.com/zulu-openjdk/zulu-openjdk/blob/master/centos/11.0.7-11.39.15/Dockerfile
FROM centos:7

MAINTAINER Michael Lehmann <michael.3.lehmann@mailbox.org>

ENV AZUL_ZULU_MINOR_VERSION zulu-11-11.39+15

#
# UTF-8 by default
#
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

#
# Pull Zulu OpenJDK binaries from official repository:
#
RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems && \
    curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo && \
    yum -q -y update && \
    yum -q -y upgrade && \
    yum -q -y install ${AZUL_ZULU_MINOR_VERSION} && \
    yum clean all && \
    rm -rf /var/cache/yum

ENV JAVA_HOME=/usr/lib/jvm/zulu-11
ENV PATH ${PATH}:${JAVA_HOME}/bin

VOLUME [ "/usr/lib/jvm/zulu-11" ]

#ENTRYPOINT ["java"]
#CMD ["-version"]
