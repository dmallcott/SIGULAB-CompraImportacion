#!/bin/bash

# Se comienza por extraer los componentes del documento
unzip ./src/documents/templates/carta_invitacion.odt -d $1

# Luego se modifica el archivo content.xml para cambiar las 
# etiquetas previamente definidas por los valores pasados 
# como argumentos
cd $1
sed -i 's/.%CODIGO%./>'$1'</g' content.xml
sed -i 's/.%FECHA%./>'$2'</g' content.xml
sed -i 's/.%NOMBRE_EMPRESA%./>'"$3"'</g' content.xml
sed -i 's/.%DIRECCION%./>'$4'</g' content.xml
sed -i 's/.%PRESENTE%./>'"$5"'</g' content.xml
sed -i 's/.%TELEFONO%./ '$6' /g' content.xml
sed -i 's/.%CORREO%./ '$7' /g' content.xml
sed -i 's/.%DIA_OFERTA%./ '$8' /g' content.xml
sed -i 's/.%MES_OFERTA%./ '$9' /g' content.xml
sed -i 's/.%CONTACTO%./ '"${10}"'</g' content.xml
sed -i 's/.%RESPONSABLE%./>'"${11}"'</g' content.xml
sed -i 's/.%UNIDAD_SOLICITANTE%./>'"${12}"'</g' content.xml

# Seguido de comprimir de nuevo el documento con los cambios hechos,
# moverlo a la carpeta de documentos generados y 
# eliminar el directorio donde se descomprimio
zip -r carta_invitacion_$1.odt *
cp carta_invitacion_$1.odt ../src/documents/generated
cd ..
rm -rf $1/
rm *.sh~

# Por ultimo se usa unoconv para generar el .pdf y luego se elimina el .odt
unoconv -f pdf src/documents/generated/carta_invitacion_$1.odt
rm src/documents/generated/carta_invitacion_$1.odt
