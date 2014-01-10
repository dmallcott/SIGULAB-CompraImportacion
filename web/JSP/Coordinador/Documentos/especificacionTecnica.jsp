<%-- 
    Document   : especificacionTecnica
    Created on : Jan 8, 2014, 5:52:04 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:form action="/agregarEspecificacionTecnica"
                   method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <tr>
                <td style="color: black">Caracteristicas</td>
                <td><html:text property="caracteristicas" maxlength="140" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="caracteristicas"/></td>
            </tr>
            <tr>
                <td style="color: black">Cantidad</td>
                <td><html:text property="cantidad" maxlength="2000" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="cantidad"/></td>
            </tr>
            <tr>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('�Est� seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
        <%--<html:button property="/" value="Agregar otro item"></html:button>--%>
    </p>
</html:form>