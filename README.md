# cgi-scripts

El propósito de estos scripts CGI trata de una serie de peticiones por metodo GET a través
de un formulario y redirigir la información a un archivo en /tmp (solo lo hace miscript.pl)

A diferencia de miscript.pl, miscript.cgi utiliza el módulo CGI, como podeis ver, es mucho
más sencillo ya que cuenta con una serie de "plantillas".

>Los dos no son identicos ,ya que con la utilización del modulo CGI no conseguí redirigir la 
>información a un archivo.


**Requisitos:**

* Servicio de apache2
   * Activar modulo cgid
   
           a2enmod cgid

* Instalar:
           
      cpan -i CGI

Mover los scripts a /usr/lib/cgi-bin/
      
      mv miscript.pl /usr/lib/cgi-bin/
      mv miscript.cgi /usr/lib/cgi-bin/

Añadirle permisos de ejecución 
 
      chmod +x miscript.pl
      chmod +x miscript.cgi
      
En el caso de que no ejecute:

        chmod 777 miscript.cgi


El script CGI miscript.pl creará en el directorio /tmp
un fichero de texto con los datos introducidos en el 
formulario.

Para que esto sea posible debemos desactivar el tmp privado de apache:

    $ sudo cd /usr/lib/systemd/system

    $ sudo vim httpd.service

En el archivo cambiar “true” por “false” en la línea que contenga “PrivateTmp”

>..

    PrivateTmp=false

>..

Antes de reiniciar el servicio debemos cargar los cambios del servicio:

    $ sudo systemctl daemon-reload

    $ sudo service httpd restart

*Eso es todo!*
