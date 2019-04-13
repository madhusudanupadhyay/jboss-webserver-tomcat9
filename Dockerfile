FROM registry.access.redhat.com/jboss-webserver-5/webserver50-tomcat9-openshift

COPY sample.war /opt/jws-5.0/tomcat/webapps/

# Option 1
#COPY logging.properties /opt/jws-5.0/tomcat/conf/

# Option 2
#COPY logging.properties /tmp/

# Option 3
#RUN rm -f /opt/jws-5.0/tomcat/conf/logging.properties

# Option 4
#ENV LOGGING_CONFIG="-Djava.util.logging.config.file=$JAVA_HOME/jre/lib/logging.properties"

CMD ["/opt/jws-5.0/tomcat/bin/launch.sh"]

