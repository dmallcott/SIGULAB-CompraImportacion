<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<logic:present name="noAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Documento no agregado.
    </p>
</logic:present>
<logic:present name="yaAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Documento ya existe.
    </p>
</logic:present>

<html:form action="/agregarCartaInvitacion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <tr>
                <td style="color: black">Fecha</td>
                <td><html:text property="fecha" maxlength="10" value="${CartaInvitacion.fecha}" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fecha"/></td>
            </tr>
            
            <div class="form-group">
             <label for="resena">Nombre de la Empresa</label>
             <html:errors  property="nomEmpresa"/>
             <html:text property="nomEmpresa" value="" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>
        
            <div class="form-group">
             <label for="resena">Dirección de la Empresa</label>
             <html:errors  property="direccion"/>
             <html:text property="direccion" value="" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>

            <div class="form-group">
             <label for="resena">Número de fax</label>
             <html:errors  property="telefono"/>
             <html:text property="telefono" maxlength="12" value="0212-XXXXXXX" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>             
             
            <div class="form-group">
             <label for="resena">Correo Electrónico</label>
             <html:errors  property="correo"/>
             <html:text property="correo" value="" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>

             <%-- aqui va la fecha --%>
            
            <div class="form-group">
             <label for="resena">Información de Contacto </label>
             <html:errors  property="contacto"/>
             <html:text property="contacto" maxlength="50" 
                        value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit styleClass="btn btn-primary" onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset styleClass="btn btn-default" value="Limpiar"/>
    </p>
</html:form>