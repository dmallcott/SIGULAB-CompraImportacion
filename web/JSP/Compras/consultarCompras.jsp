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
        <div id="consultCompra">
            <table border="0">
                <thead>
                <th>
                    Orden
                </th>
                </thead>
                <logic:iterate name="compras" id="Compras">
                    <tr>
                        <td>
                            <bean:write name="Compras" property="N_OC_OS"></bean:write>
                            </td>                        
                            <td>
                            <bean:write name="Compras" property="Status"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="Tipo"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="FechaPartPresu"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="FechaRecepCertPresu"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="TipoPago"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="NumeroPago"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="FechaPago"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="TotalGravemenes"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="MontoFactura"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="TipoCertServ"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="NumeroCertServ"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="FechaCertServ"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="NIR"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="NumeroFactura"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="FechaFactura"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="Ubicacion"></bean:write>
                            </td>
                            <td>
                            <bean:write name="Compras" property="Obs"></bean:write>
                            </td>

                        </tr>
                </logic:iterate> 
            </table>

        </div>
    </body>
</html>
