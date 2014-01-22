<%-- 
    Document   : notaDevolucion
    Created on : Jan 9, 2014, 7:39:57 PM
    Author     : patrick
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<logic:present name="noAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Documento no agregado.
    </p>
</logic:present>
<logic:present name="yaAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Documento ya existe.
    </p>
</logic:present>


<html:form action="/agregarNotaDevolucion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <tr>
                <td style="color: black">Requisicion</td>
                <td><html:checkbox property="requisicion" value="True" ></html:checkbox></td>
                <td><html:hidden property="requisicion" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">No.</td>
                <td><html:text property="rqNO" maxlength="12" value=""></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Autorizacion de Pago</td>
                <td><html:checkbox property="pago" value="True"></html:checkbox></td>
                <td><html:hidden property="pago" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">No.</td>
                <td><html:text property="pNO" maxlength="12" value="" ></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Certificacion de servicio</td>
                <td><html:checkbox property="certificacionServicio" value="True"></html:checkbox></td
                <td><html:hidden property="certificacionServicio" value="False"></html:hidden></td
            </tr>
            <tr>
                <td style="color: black">No.</td>
                <td><html:text property="csNO" maxlength="12" value="" ></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Solicitud de servicio</td>
                <td><html:checkbox property="solicitudServicio" value="True"></html:checkbox></td>
                <td><html:hidden property="solicitudServicio" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">No.</td>
                <td><html:text property="ssNO" maxlength="12" value="" ></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Informe de Recepcion</td>
                <td><html:checkbox property="recepcion" value="True"></html:checkbox></td>
                <td><html:hidden property="recepcion" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">No.</td>
                <td><html:text property="rpNO" maxlength="12" value=""></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Otro</td>
                <td><html:checkbox property="otro" value="True"></html:checkbox></td>
                <td><html:hidden property="otro" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Descripcion</td>
                <td><html:text property="otro1" maxlength="10" value="" ></html:text></td>
            </tr>
            <tr>
                <td style="color: black">No.</td>
                <td><html:text property="oNO" maxlength="12" value=""></html:text></td>
            </tr>
            <tr>
                <td>Causa de la Devolucion</td>
            </tr>
            <tr>
                <td style="color: black">Disponibilidad presupuestaria insuficiente</td>
                <td><html:checkbox property="c1" value="True"></html:checkbox></td>
                <td><html:hidden property="c1" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Registro en idioma distinto al espanol</td>
                <td><html:checkbox property="c2" value="True"></html:checkbox></td>
                <td><html:hidden property="c2" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Registro no discriminado por items</td>
                <td><html:checkbox property="c3" value="True"></html:checkbox></td>
                <td><html:hidden property="c3" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Registro sin la firma y/o sello de la Unidad Responsable</td>
                <td><html:checkbox property="c4" value="True"></html:checkbox></td>
                <td><html:hidden property="c4" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Carencia de informacion indispensable del proveedor del bien o servicio:</td>
                <td><html:checkbox property="c5" value="True"></html:checkbox></td>
                <td><html:hidden property="c5" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Nombre</td>
                <td><html:checkbox property="c5nombre" value="True"></html:checkbox></td>
                <td><html:hidden property="c5nombre" value="False"></html:hidden></td>
            </tr> 
            <tr>
                <td style="color: black">RIF</td>
                <td><html:checkbox property="c5rif" value="True"></html:checkbox></td>
                <td><html:hidden property="c5rif" value="False"></html:hidden></td>
            </tr>  
            <tr>
                <td style="color: black">Direccion Fiscal</td>
                <td><html:checkbox property="c5fiscal" value="True"></html:checkbox></td>
                <td><html:hidden property="c5fiscal" value="False"></html:hidden></td>
            </tr>       
            <tr>
                <td style="color: black">Telefonos</td>
                <td><html:checkbox property="c5tlf" value="True"></html:checkbox></td>
                <td><html:hidden property="c5tlf" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Datos Bancarios</td>
                <td><html:checkbox property="c5banco" value="True"></html:checkbox></td>
                <td><html:hidden property="c5banco" value="False"></html:hidden></td>
            </tr>      
            <tr>
                <td style="color: black">Persona Contacto</td>
                <td><html:checkbox property="c5contacto" value="True"></html:checkbox></td>
                <td><html:hidden property="c5contacto" value="False"></html:hidden></td>
            </tr>  
            <tr>
                <td style="color: black">Otro</td>
                <td><html:checkbox property="c5otro" value="True"></html:checkbox></td>
                <td><html:hidden property="c5otro" value="False"></html:hidden></td>
            </tr>          
            <tr>
                <td>Carencia de Documentos:</td>
            </tr>
            <tr>
                <td style="color: black">Contrato Fonacit, si aplica</td>
                <td><html:checkbox property="c6" value="True"></html:checkbox></td>
                <td><html:hidden property="c6" value="False"></html:hidden></td>
            </tr>      
            <tr>
                <td style="color: black">Copia del Acta del Consejo Directivo que autorice la Contratacion
                Publica (Compras mayores de 2.500 UT), si es aplicable</td>
                <td><html:checkbox property="c7" value="True"></html:checkbox></td>
                <td><html:hidden property="c7" value="False"></html:hidden></td>
            </tr>          
            <tr>
                <td style="color: black">Factura, Proforma, o Cotizacion a nombre de la USB, indicando
                la condicion de la entrega.</td>
                <td><html:checkbox property="c8" value="True"></html:checkbox></td>
                <td><html:hidden property="c8" value="False"></html:hidden></td>
            </tr>   
            <tr>
                <td style="color: black">Foto Referencial del Material y/o Equipo solicitado</td>
                <td><html:checkbox property="c9" value="True"></html:checkbox></td>
                <td><html:hidden property="c9" value="False"></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Observaciones</td>
                <td><html:text property="observaciones" maxlength="300"></html:text></td>
            </tr> 
            <tr>
                <td style="color: black">Fecha</td>
                <td><html:text property="fecha" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" ></html:text></td>
            </tr>          
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>
