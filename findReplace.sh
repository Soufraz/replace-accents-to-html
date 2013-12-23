#!/bin/bash

AUX=".aux"
ORIG=".orig"

for i in `find $1 -iname "*.php"`
#for i in *.php
do

sed -e 's/á/\&aacute;/g' \
-e 's/Á/\&Aacute;/g'  \
-e 's/ã/\&atilde;/g' \
-e 's/Ã/\&Atilde;/g' \
-e 's/â/\&acirc;/g' \
-e 's/Â/\&Acirc;/g' \
-e 's/à/\&agrave;/g' \
-e 's/À/\&Agrave;/g' \
-e 's/é/\&eacute;/g' \
-e 's/É/\&Eacute;/g' \
-e 's/ê/\&ecirc;/g' \
-e 's/Ê/\&Ecirc;/g' \
-e 's/í/\&iacute;/g' \
-e 's/Í/\&Iacute;/g' \
-e 's/ó/\&oacute;/g' \
-e 's/Ó/\&Oacute;/g' \
-e 's/õ/\&otilde;/g' \
-e 's/Õ/\&Otilde;/g' \
-e 's/ô/\&ocirc;/g' \
-e 's/Ô/\&Ocirc;/g' \
-e 's/ú/\&úacute;/g' \
-e 's/Ú/\&Úacute;/g' \
-e 's/ç/\&ccedil;/g' \
-e 's/Ç/\&Ccedil;/g' $i > $i$AUX
mv $i $i$ORIG
mv $i$AUX $i
rm $i$ORIG

done
