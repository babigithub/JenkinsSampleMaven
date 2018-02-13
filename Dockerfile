FROM java:8
VOLUME /tmp
EXPOSE 8080
ADD http://nexus-ose-jenkinscomponents.cloudapps-3877.oslab.opentlc.com/content/repositories/releases/techm/cadt/com/jenkins-war/2.888/jenkins-war-2.888.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
