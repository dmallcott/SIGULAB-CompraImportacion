<%-- 
    Document   : InformeRecomendacion
    Created on : Jan 8, 2014, 7:17:27 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:form action="/AgregarInformeRecomendacion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <tr>
                <td style="color: black">NoConsultaPrecio</td>
                <td><html:text property="NoConsultaPrecio" maxlength="10" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="NoConsultaPrecio"/></td>
            </tr>
            <tr>
                <td style="color: black">Nombre de la Empresa</td>
                <td><html:text property="nomEmpresa" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="nomEmpresa"/></td>
            </tr>
            <tr>
                <td style="color: black">Direccion de la Empresa</td>
                <td><html:text property="direccion" maxlength="150" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="direccion"/></td>
            </tr>
            <tr>
                <td style="color: black">Numero de fax</td>
                <td><html:text property="telefono" maxlength="12" value="0212-XXXXXXX" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="telefono"/></td>
            </tr>
            <tr>
                <td style="color: black">Correo</td>
                <td><html:text property="correo" maxlength="50" value="XXXX@usb.ve" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="correo"/></td>
            </tr>
            <tr>
                <td style="color: black">Dia final de la oferta</td>
                <td><html:text property="diaOferta" maxlength="2" value="Ej: 02" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="diaOferta"/></td>
            </tr>
            <tr>
                <td style="color: black">Mes final de la oferta</td>
                <td><html:text property="mesOferta" maxlength="20" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="mesOferta"/></td>
            </tr>
            <tr>
                <td style="color: black">Informacion de Contacto</td>
                <td><html:text property="contacto" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="contacto"/></td>
            </tr>
            <tr>
                <td style="color: black">Responsable</td>
                <td><html:text property="responsable" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="responsable"/></td>
            </tr>
            <tr>
                <td style="color: black">Unidad Solicitante</td>
                <td><html:text property="unidadSolicitante" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="unidadSolicitante"/></td>
            </tr>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>