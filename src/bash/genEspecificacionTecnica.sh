#!/bin/bash

# Se comienza por extraer los componentes del documento
unzip ./src/documents/templates/especificacion_tecnica.odt -d $1

# Luego se modifica el archivo content.xml para cambiar las
# etiquetas previamente definidas por los valores pasados
# como argumentos
cd $1
sed -i 's/.%CODIGO%./>'$1'</g' content.xml
sed -i 's/.%FECHA%./>'$2'</g' content.xml
sed -i 's/.%ITEM%./>'"$3"'</g' content.xml
sed -i 's/.%NO_REGISTRO%./>'$4'</g' content.xml
sed -i 's/.%CARACTERISTICAS%./ '$5' /g' content.xml
sed -i 's/.%CANTIDAD%./ '$6' /g' content.xml

# Seguido de comprimir de nuevo el documento con los cambios hechos,
# moverlo a la carpeta de documentos generados y
# eliminar el directorio donde se descomprimio
zip -r especificacion_tecnica_$1.odt *
cp especificacion_tecnica_$1.odt ../src/documents/generated
cd ..
rm -rf $1/
rm *.sh~

# Por ultimo se usa unoconv para generar el .pdf y luego se elimina el .odt
unoconv -f pdf src/documents/generated/especificacion_tecnica_$1.odt
rm src/documents/generated/especificacion_tecnica_$1.odt
