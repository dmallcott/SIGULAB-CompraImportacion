<%-- 
    Document   : actoMotivaado
    Created on : Jan 8, 2014, 7:49:24 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:form action="/agregarActoMotivado" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <tr>
                <td style="color: black">Fecha</td>
                <td><html:text property="fecha" maxlength="10" value="dd-mm-yyyy" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fecha"/></td>
            </tr>
            <tr>
            <tr>
                <td style="color: black">Proveedor</td>
                <td><html:text property="proveedor" maxlength="100" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="proveedor"/></td>
            </tr>
            <tr>
                <td style="color: black">Bien o Servicio</td>
                <td><html:text property="bienOServicio" maxlength="100" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="bienOServicio"/></td>
            </tr>
                <td style="color: black">Motivo Requerimiento</td>
                <td><html:text property="motivoReq" maxlength="200" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="motivoReq"/></td>
            </tr>
            <tr>
                <td style="color: black"> Responsable</td>
                <td><html:text property="responsable" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="responsable"/></td>
            </tr>
            <tr>
                <td style="color: black">justificacion</td>
                <td><html:text property="fecha" maxlength="300" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="justificacion"/></td>
            </tr>  
            <tr>
                <td style="color: black">Proveniente de</td>
                <td><html:text property="fecha" maxlength="20" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="proveniente"/></td>
            </tr>
            <tr>
                <td style="color: black">Cargo</td>
                <td><html:text property="cargo" maxlength="50" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="cargo"/></td>
            </tr>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>