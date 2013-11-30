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
                            <bean:write name="Compras" property="numOrden"></bean:write>
                        </td>
                    </tr>
                </logic:iterate> 
            </table>
        </div>
    </body>
</html>
