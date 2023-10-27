FROM tomcat:8
RUN apt update && apt -y install \
net-tools \
zip \
unzip \
curl 
COPY target/flipkart.war /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]
