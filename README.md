# daw-apache-tomcat-docker
Proyecto para despliegues en Apache Tomcat

## Comandos de Docker para la imagen
Compilar la imagen.

`docker-compose build`

Levantar los contenedores.

`docker-compose up -d`

Terminal de un contenedor desde nuestra terminal.
`docker exec -it CONTAINER_ID bash`

Para conseguir el CONTAINER_ID se obtiene con el comando.

`docker ps`

### URL Contenedor
http://0.0.0.0:8080/

## Certificados SSL
Los certificados han sido generados mediante openssl:

`openssl req -x509 -newkey rsa:4096 -keyout localhost-rsa-key.pem -out localhost-rsa-cert.pem -days 36500`

### Activar la configuración de los Certificados
En el server.xml descomentar y modificar el atributo certificateKeyFile, certificaleFile y certificateKeyPassword.
`<Connector port="8443" protocol="org.apache.coyote.http11.Http11AprProtocol"
               maxThreads="150" SSLEnabled="true" >
        <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />
        <SSLHostConfig>
            <Certificate certificateKeyFile="ssl/localhost-rsa-key.pem"
                         certificateFile="ssl/localhost-rsa-cert.pem"
                         certificateKeyPassword="changeit"
                         type="RSA" />
        </SSLHostConfig>
    </Connector>`

### URL protocolo seguro
https://0.0.0.0:8443/

## Configuraciones
Activar los usuarios del manager en el server.xml

En el fichero tomcat-user.xml añadir la siguiente línea:
`<user username="useradmin" password="useradmin" roles="admin-gui, manager-gui, manager-status"/>`


