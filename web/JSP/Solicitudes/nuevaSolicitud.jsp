<%-- 
    Document   : nuevaSolicitud
    Created on : Jan 22, 2014, 2:10:08 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:form action="/nuevaSolicitud" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table>
        <thead>
        <th>
            Descripcion
        </th>
        <th>
            Tipo
        </th>
        <th>
            
        </th>
        </thead>
        <tr>
            <td>
                <html:textarea property="descripcion"></html:textarea>
            </td>
            <td>
        <html:select property="tipo">
            <html:option value="compra">Compra</html:option>
            <html:option value="servicio">Servicio</html:option>
        </html:select>
            </td>
            <td>
            <html:submit>Crear</html:submit>
            </td>
        </tr>
    </table>
</html:form>
