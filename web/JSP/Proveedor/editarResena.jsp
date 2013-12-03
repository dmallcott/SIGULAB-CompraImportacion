<%-- 
    Document   : editarResena
    Created on : Nov 30, 2013, 7:16:05 PM
    Author     : daniel
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
        
        <logic:present name="editado">
            <br>
            <p align ="center" style="background-color: springgreen;
               width: 300px; margin-left: auto; margin-right: auto"> 
               Resena editada exitosamente.
            </p>
        </logic:present>
        <logic:present name="noEditado">
            <br>
            <p align ="center" style="background-color: springgreen;
               width: 300px; margin-left: auto; margin-right: auto"> 
               Resena no pudo ser editada.
            </p>
        </logic:present>
        
        <html:form action="/editarResena" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Resena previa</td>
                        <td>
                            <bean:write name="Proveedor" property="resena"></bean:write>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: black">Resena actualizada</td>
                        <td>
                         <html:hidden name="Proveedor" property="RIF"/>
                         <html:text name="Proveedor" property="resena" maxlength="100" errorStyleClass="error" value=""
                                       errorKey="org.apache.struts.action.ERROR"></html:text>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color:firebrick">
                            <html:errors property="resena"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p style="text-align: center">
                <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')">
                    Editar resena.
                </html:submit>
                <html:reset value="Limpiar"/>
            </p>
        </html:form>
    </body>
</html>
