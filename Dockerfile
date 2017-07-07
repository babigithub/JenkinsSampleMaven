FROM java:8
VOLUME /tmp
EXPOSE 8080
ADD http://nexusrepo-nexus.cloudapps-5957.oslab.opentlc.com/content/repositories/releases/techm/cadt/com/jenkins-war/2.777/jenkins-war-2.777.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
