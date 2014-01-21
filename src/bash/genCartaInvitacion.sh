#!/bin/bash

newdir=${1//\//-}

# Se comienza por extraer los componentes del documento
unzip ./src/documents/templates/carta_invitacion.odt -d $newdir

# Luego se modifica el archivo content.xml para cambiar las 
# etiquetas previamente definidas por los valores pasados 
# como argumentos
cd $newdir
sed -i 's,.%CODIGO%.,>'$1'<,g' content.xml
sed -i 's/.%FECHA%./>'$2'</g' content.xml
sed -i 's/.%NOMBRE_EMPRESA%./>'"$3"'</g' content.xml
sed -i 's/.%DIRECCION%./>'"$4"'</g' content.xml
#sed -i 's/.%PRESENTE%./>'"$5"'</g' content.xml
sed -i 's/.%TELEFONO%./ '$5' /g' content.xml
sed -i 's/.%CORREO%./ '$6' /g' content.xml
sed -i 's/.%DIA_OFERTA%./ '$7' /g' content.xml
sed -i 's/.%MES_OFERTA%./ '$8' /g' content.xml
sed -i 's/.%CONTACTO%./ '"$9"'</g' content.xml
sed -i 's/.%RESPONSABLE%./>'"${10}"'</g' content.xml
sed -i 's/.%UNIDAD_SOLICITANTE%./>'"${11}"'</g' content.xml

# Seguido de comprimir de nuevo el documento con los cambios hechos,
# moverlo a la carpeta de documentos generados y 
# eliminar el directorio donde se descomprimio
zip -r carta_invitacion_$newdir.odt *
cp carta_invitacion_$newdir.odt ../src/documents/generated
cd ..
rm -rf $newdir/

# Por ultimo se usa unoconv para generar el .pdf y luego se elimina el .odt
unoconv -f pdf src/documents/generated/carta_invitacion_$newdir.odt
rm src/documents/generated/carta_invitacion_$newdir.odt
