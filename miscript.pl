#!/usr/bin/perl

print "Content-Type: text/html\n\n";
if($ENV{'QUERY_STRING'} eq "") {
   open F, ">/tmp/usua-regis.txt";
   print "<B>Introduce tu nombre</B>
          <form name=\"form1\" method=\"get\" >";
   print "<input type=\"text\" name=\"nombre\" ><br><br>";
   print "<B>Introduce tu apellido</B><br>";
   print "<input type=\"text\" name=\"ape\">  ";
   print "<input type=\"submit\" value=\"enviar\">";
}

if($ENV{'QUERY_STRING'} ne "") {
  @arGet=split("=", $ENV{'QUERY_STRING'});

  if (@arGet[0] eq "nombre") {
    $datos = $ENV{'QUERY_STRING'};
    @array = split('&', $datos);

    foreach $pair (@array) {
      ($name, $value) = split('=', $pair);
      $FORM{$name} = $value;
    };
    $nombre = $FORM{nombre};
    $ape = $FORM{ape};

    print "<h3>Hola <i>$nombre $ape</i></h3>";
    print F "$nombre" . ":" . "$ape";
    print "<B>Introduzca su edad</B>
          <form name=\"form2\" method=\"get\" >"; 
    $cont=15;
    print "<select name=\"edad\" >";
    for (my $i=15; $i <= 60; $i++) {
       print "<option value=$i";
       print ">$i</option>";
    }
    print "<input type=\"submit\" value=\"Enviar\" >";
  }
}

if(@arGet[0] eq "edad") {
   @edad = split("=", $ENV{QUERY_STRING});
   print "Tiene <B>$edad[1]</B> anios";
}
