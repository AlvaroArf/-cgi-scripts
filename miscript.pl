#!/usr/bin/perl

print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
   print "<h1>Scrip sin modulo CGI</h1>
          <form name=\"search\" method=\"get\" >";
   print "Cual es tu nombre?" , "\n";
   print "<input type = \"text\" name = \"nombre\"><br/><br/>";
   print "Cual es tu contrasenia?", "\n";
   print "<input type = \"passwd\" name = \"contra\"><br/><br/>";
   print "Cual es tu sistema operativo favorito?", "\n";
   print "<select name = \"SO\">";
#   print "<option value = \"WINDOWS\"
#   print ">WINDOWS</option>";
#   print "<option value = \"LINUX\"
#   print ">LINUX</option>";
#   print "<option value = \"MACOS\"
#   print ">MACOS</option>";
   print "</select>
         <input type=\"submit\" value=\"Enviar\" />";
}else {
  $datos = $ENV{'QUERY_STRING'};

@array = split('&', $datos);

foreach $pair (@array) {
  ($name, $value) = split('=', $pair);
  $FORM{$name} = $value;
};

$nombre = $FORM{nombre};
$contra = $FORM{contra};
print "YA SE TU CONTRASENIA <B>$nombre</B>!<br/> Es <B>$contra</B>";
}
