# Tomcat Hello world web app example
To run the example follow the steps:
1. Create Java Docker image:
   1. Go to folder java_tomcat_container
   1. Enter `docker build -f Dockerfile_java1 -t zulu-openjdk-centos:11.0.7 .` This will creata a docker image locally
   1. With git tag Java-xxx you can tag your Dockerfile release
   1. With git push origin master Java-xxx you push this tag to GitHub. This will trigger the creation of the docker image and the push to Dockerhub (see workflow java_container.yml)
1. Create Tomcat Docker image: 
   1. Go to folder java_tomcat_container. 
   1. Enter `docker build -f Dockerfile_tomcat1 -t tomcat-jre11:8.5.57 .` This will creata a docker image locally
   1. With git tag Tomcat-xxx you can tag your Dockerfile release
   1. With git push origin master Tomcat-xxx you push this tag to GitHub. This will trigger the creation of the docker image and the push to Dockerhub (see workflow tomcat_container.yml)
1. Create Hellow World Web App Docker Image
   1. Go to folder tomcat_base_webapp
   1. Enter `mvn install`
   1. Start the docker container: `docker run -p 8080:8080 helloworld:latest`
   1. Enter mvn release:clean and mvn release:prepare. This will create a docker image with the release version (e.g. v0.0.x) using the tagged version v0.0.x
   