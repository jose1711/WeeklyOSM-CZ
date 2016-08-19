#!/bin/bash

IN=`pwd`/$2

test "$1" -gt 300 || { echo 'issue number should be bigger then 300!'; exit; }
test -f "$IN"  || { echo 'no input file with issue text found!'; exit; }

#cd ~/documents/osm/weekly/ || exit

cat header.html $IN footer.html >$1.html

cp $1.html $1-orig.html

sedfile "s/>About us</>O nás</;
         s/>Mapping</>Mapování</;
         s/>Community</>Komunita</;
         s/>Imports</>Importy</;
         s/>Licenses</>Licence</;
         s/>Licences</>Licence</;
         s/>OpenStreetMap Foundation</>Nadace OpenStreetMap</;
         s/>Humanitarian OSM</>Humanitární OSM</;
         s/>Maps</>Mapy</;
         s/>switch2OSM</>Přechod k OSM</;
         s/>Open Data</>Otevřená data</;
         s/>Programming</>Programování</;
         s/>Releases</>Nová vydání</;
         s/>Did you know .</>Věděli jste ...</;
         s/>Other .geo. things</>Ostatní "geo" záležitosti</;
         s/>Events</>Události</;
         s/>Upcoming Events</>Plánované události</;
         s/>OSM in the media</>OSM v médiích</;
         s/>Long [tT]erm [dD]ates</>Pozdější důležité akce</;
         
         s/th>Software</th>software</;
         s/>Version</>verze</;
         s/>Release [Dd]ate</>datum vydání</;
         s/>Comment</>komentář</;

         s/>Where</>kde</;
         s/>What</>co</;
         s/>When</>kdy</;
         s/>Country</>země</;

         s/>Dónde</>kde</;
         s/>Qué</>co</;
         s/>Fecha</>kdy</;
         s/>País</>země</;
         
         s/>translation</>překlad</;

         s/>‘’’/>/g;
         s/>'''/>/g;

         s/[pP]rovided by the /Poskytuje /;
        " $1.html

vim $1.html
