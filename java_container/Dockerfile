# Derived from https://hub.docker.com/r/azul/zulu-openjdk-centos and https://github.com/zulu-openjdk/zulu-openjdk/blob/master/centos/11.0.10-11.45.27/Dockerfile
FROM centos:7

#Pick always latest version. In case I find out the exact name for a specific patch version then this could also be used
ENV AZUL_ZULU_MINOR_VERSION zulu11-jdk

#
# UTF-8 by default
#
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

#
# Pull Zulu OpenJDK binaries from official repository:
#
ARG ZULU_REPO_VER=1.0.0-1

RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems && \
    curl -sLO https://cdn.azul.com/zulu/bin/zulu-repo-${ZULU_REPO_VER}.noarch.rpm && \
    rpm -ivh zulu-repo-${ZULU_REPO_VER}.noarch.rpm && \
    yum -q -y update && \
    yum -q -y upgrade && \
    yum -q -y install ${AZUL_ZULU_MINOR_VERSION} && \
    yum clean all && \
    rm -rf /var/cache/yum zulu-repo_${ZULU_REPO_VER}.noarch.rpm

ENV JAVA_HOME=/usr/lib/jvm/zulu-11
ENV PATH ${PATH}:${JAVA_HOME}/bin

VOLUME [ "/usr/lib/jvm/zulu-11" ]

#ENTRYPOINT ["java"]
#CMD ["-version"]
