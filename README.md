# -cgi-scripts

El propósito de estos scripts CGI trata de una serie de peticiones por metodo GET a través
de un formulario y redirigir la información a un archivo en /tmp (solo lo hace miscript.pl)

A diferencia de miscript.pl, miscript.cgi utiliza el módulo CGI, como podeis ver, es mucho
más sencillo ya que cuenta con una serie de "plantillas".

Los dos no son identicos ,ya que con la utilización del modulo CGI no conseguí redirigir la 
información a un archivo.


**Requisitos:**

*Servicio de apache2
   *Activar modulo cgid
   
           a2enmod cgid

Instalar:  cpan -i CGI

Mover los scripts a /usr/lib/cgi-bin/		#(habitualmente)

Añadirle permisos de ejecución 
En el caso de que no ejecute:

        -chmod 777 miscript.cgi
