<%-- 
    Document   : solicitudes
    Created on : Jan 14, 2014, 1:35:09 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<table>
    <thead>
        <th>Codigo</th>
        <th>Descricion</th>
        <th>Detalle</th>
    </thead>
    <tbody>
        <logic:iterate name="expedientes" id="exp">
        <tr>
            <td>
                <bean:write name="exp" property="codigo"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                <bean:write name="exp" property="descripcion"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                <html:form action="/verSolicitud" onsubmit="return(this)">
                    <html:hidden name="exp" property="codigo"/>
                    <html:submit>Detalle</html:submit>
                </html:form>
            </td>
        </tr>
        </logic:iterate>
    </tbody>
</table>