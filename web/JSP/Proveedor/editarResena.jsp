<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<logic:present name="noEditado">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
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
                    <td style="color: black">Nueva resena</td>
                    <td>
                    <html:hidden name="Proveedor" property="RIF"/>
                    <html:textarea name="Proveedor" property="resena" errorStyleClass="error" value=""
                                   errorKey="org.apache.struts.action.ERROR"></html:textarea>
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
        <html:submit>
            Editar
        </html:submit>
        <html:reset>Limpiar</html:reset>
        </p>
</html:form>