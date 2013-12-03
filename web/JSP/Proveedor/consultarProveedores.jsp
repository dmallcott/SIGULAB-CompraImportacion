<%-- 
    Document   : proveedores
    Created on : Nov 27, 2013, 12:06:37 PM
    Author     : patrick
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <logic:present name="eliminado">
            <br>
            <p align ="center" style="background-color: springgreen;
               width: 300px; margin-left: auto; margin-right: auto"> 
               Proveedor eliminado exitosamente.
            </p>
        </logic:present>
        <logic:present name="noEliminado">
            <br>
            <p align ="center" style="background-color: springgreen;
               width: 300px; margin-left: auto; margin-right: auto"> 
               El proveedor no pudo ser eliminado exitosamente.
            </p>
        </logic:present>
        
        <div id="consultProveedor">
            <table border="0">
                <thead>
                    <th>
                        RIF
                    </th>
                    <th>
                        Compania
                    </th>
                    <th>
                        Telefono
                    </th>
                    <th>
                        Resena
                    </th> 
                    <th>
                        Editar
                    </th>
                    <th>
                        Eliminar
                    </th>
                </thead>
                <logic:iterate name="proveedores" id="Proveedores">
                    <tr>
                        <td>
                            <bean:write name="Proveedores" property="RIF"></bean:write>
                        </td>
                        <td>
                            <bean:write name="Proveedores" property="compania"></bean:write>
                        </td>
                        <td>
                            <bean:write name="Proveedores" property="telefono"></bean:write>
                        </td>
                        <td>
                            <bean:write name="Proveedores" property="resena"></bean:write>
                        </td>
                        <td>
                            <html:form action="/petEditarResena" onsubmit="return(this)">
                                <html:hidden name="Proveedores" property="RIF"/>
                                <html:hidden name="Proveedores" property="resena"/>
                                
                                <html:submit>
                                    Editar Resena
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
    </body>
</html>
