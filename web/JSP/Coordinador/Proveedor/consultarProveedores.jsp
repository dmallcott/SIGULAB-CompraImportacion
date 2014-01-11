<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<logic:present name="eliminado">
    <br>
    <p align ="center" style="background-color: springgreen;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor eliminado exitosamente.
    </p>
</logic:present>
<logic:present name="noEliminado">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
        Proveedor no pudo ser eliminado.
    </p>
</logic:present>
<logic:present name="deshabilitado">
    <br>
    <p align ="center" style="background-color: springgreen;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor deshabilitado exitosamente.
    </p>
</logic:present>
<logic:present name="noDeshabilitado">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
        Proveedor no pudo ser deshabilitado.
    </p>
</logic:present>
<logic:present name="editado">
    <br>
    <p align ="center" style="background-color: springgreen;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Resena editada exitosamente.
    </p>
</logic:present>
<logic:present name="noConsulta">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
        No pudo realizarse la consulta.
    </p>
</logic:present>  


<div width="100%" style="overflow-x: scroll;">
<table border="0">
    <thead style="">
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        RIF
    </th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Compania
    </th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Telefono
    </th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Resena
    </th> 
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Estado
    </th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Editar
    </th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Deshabilitar
    </th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
        Eliminar
    </th>
</thead>
<logic:iterate name="proveedores" id="Proveedores">
    <tr>
        <td>
            <p style="width:80px"><bean:write name="Proveedores" property="RIF"></bean:write></p>
            </td>
            <td>
            <bean:write name="Proveedores" property="compania"></bean:write>
            </td>
            <td>
                <p style="width:80px"><bean:write name="Proveedores" property="telefono"></bean:write></p>
            </td>
            <td>
                <p style="width:145px; overflow: auto;"><bean:write name="Proveedores" property="resena"></bean:write></p>
            </td>
            <td>
                <p style="width:145px; overflow: auto;">
                <logic:equal name="Proveedores" property="deshabilitado" value="false" >OK</logic:equal>
                <logic:notEqual name="Proveedores" property="deshabilitado" value="false" >Deshabilitado</logic:notEqual>
                </p>
            </td>
            <td>
            <html:form action="/reqEditarResena" onsubmit="return(this)">
                <html:hidden name="Proveedores" property="RIF"/>
                <html:hidden name="Proveedores" property="resena"/>

                <html:submit>
                    Editar Resena
                </html:submit>
            </html:form>
        </td>
        <td>
            <html:form action="/deshabilitarProveedor" onsubmit="return(this)">
                <html:hidden name="Proveedores" property="RIF"/>
                <html:submit>
                    Deshabilitar
                </html:submit>
            </html:form>
        </td>
        <td>
            <html:form action="/eliminarProveedor" onsubmit="return(this)">
                <html:hidden name="Proveedores" property="RIF"/>
                <html:submit>
                    Eliminar
                </html:submit>
            </html:form>
        </td>
    </tr>
</logic:iterate> 
</table>
</div>