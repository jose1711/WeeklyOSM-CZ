#!/bin/bash

IN=`pwd`/$2

test "$1" -gt 300 || { echo 'issue number should be bigger then 300!'; exit; }
test -f "$IN"  || { echo 'no input file with issue text found!'; exit; }

cd ~/documents/osm/weekly/ || exit

cat header.html $IN footer.html >$1.html

cp $i.html $1-orig.html

sedfile 's/>About us</>O nás</;
         s/>Mapping</>Mapování</;
         s/>Community</>Komunita</;
         s/>Imports</>Importy</;
         s/>OpenStreetMap Foundation</>Nadace OpenStreetMap</;
         s/>Humanitarian OSM</>Humanitární OSM</;
         s/>Maps</>Mapy</;
         s/>switch2OSM</>Přechod k OSM</;
         s/>Open Data</>Otevřená data</;
         s/>Programming</>Programování</;
         s/>Releases</>Nová vydání</;
         s/>Did you know .</>Vědeli jste ...</;
         s/>Other .geo. things</>Ostatní "geo" záležitosti</;
         s/>Events</>Události</;
         s/>Upcoming Events</>Plánované události</;
         s/>Long term dates</>Pozdější důležité akce</;
         
         s/th>Software</th>software</;
         s/>Version</>verze</;
         s/>Release Date</>datum vydání</;
         s/>Comment</>komentář</;

         s/>Where</>kde</;
         s/>What</>co</;
         s/>When</>kdy</;
         s/>Country</>země</;
         
         s/>‘’’/>/g;

         s/provided by the /Poskytuje /;
        ' $1.html

vim $1.html
