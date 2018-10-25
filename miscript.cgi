#!/usr/bin/perl
  use CGI qw/:standard/;
      print
          header,
          start_html('Alvaro Rojas'),
          h1('Script Usando modulo CGI'),
          start_form,
          "Cual es tu nombre? ",textfield('name'),p,
          "Cual es tu contrasenia?",textfield('contra'),p,
          "Cual es tu sistema operativo favorito?",
          popup_menu(-name=>'so',
                 -values=>['Windows','Linux','macOS']),p,
          submit,
          end_form,
          hr,"\n";
       if (param) {
          print
          "Tu nombre es ",em(param('name')),p,
          "Tu contrasenia es: ",em(param('contra')),p,
          "Tu SO favorito es:  ",em(param('so')),".\n";
       }
       print end_html;

