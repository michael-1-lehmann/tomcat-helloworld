# Tomcat Hello world web app example
To run the example follow the steps:
1. Create Java Docker image:
   1. Go to folder java_tomcat_container
   1. Enter `docker build -f Dockerfile_java1 -t zulu-openjdk-centos:11.0.7 .`
1. Create Tomcat Docker image: 
   1. Go to folder java_tomcat_container. 
   1. Enter `docker build -f Dockerfile_tomcat1 -t tomcat-jre11:8.5.57 .`
1. Create Hellow World Web App Docker Image
   1. Go to folder tomcat_base_webapp
   1. Enter `mvn install`
   1. Start the docker container: `docker run -p 8080:8080 helloworld:latest`
   