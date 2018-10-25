# -cgi-scripts

El propósito del script consistia en un "login" en el que enviamos los datos a 
una tabla mysql usando modulos DBI, pero no he tenido tiempo aun para desarrollarlo

Estos dos scripts son CGI aunque miscript.cgi usa el modulo CGI mientras que miscript.pl no.

Los dos no son identicos ya que sin la utilización del modulo CGI no consegui introducir 
varias opciones por error de sintaxis (a mi entender)



Requisitos:

Servicio de apache2

      -Activar modulo cgid

Instalar:  cpan -i CGI

Mover los scripts a /usr/lib/cgi-bin/		#(habitualmente)

Añadirle permisos de ejecución 
En el caso de que no ejecute:

        -chmod 777 miscript.cgi
