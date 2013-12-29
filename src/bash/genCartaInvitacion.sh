#!/bin/bash

unzip ./src/documents/templates/carta_invitacion.odt -d $1

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

zip -r carta_invitacion_$1.odt *
cp carta_invitacion_$1.odt ../src/documents/generated
cd ..
rm -rf $1/

