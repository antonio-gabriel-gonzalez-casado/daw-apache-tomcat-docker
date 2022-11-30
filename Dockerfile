# Imagen oficial de tomcat 9.0.69 en dockerhub
FROM tomcat:9.0.69-jre8
# RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
# Copiar el archivo de ejemplo a la ruta de despliegue de tomcat en una máquina linux
# COPY apps/sample.war /usr/local/tomcat/webapps