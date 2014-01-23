<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<logic:present name="noAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor no agregado.
    </p>
</logic:present>
<logic:present name="yaAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor ya existe.
    </p>
</logic:present>

<html:form action="/agregarProveedor" method="POST" acceptCharset="ISO-8859-1" 
           enctype="multipart/form-data" onsubmit="return(this)">
        <div class="form-group">
            <label for="rif">RIF</label>
            <html:errors  property="RIF"/>
            <html:text name="Proveedor" property="RIF" maxlength="12" value="" errorStyleClass="error"
                       errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
        <div class="form-group">
            <label for="compania">Proveedor</label>
            <html:errors  property="compania"/>
            <html:text name="Proveedor" property="compania" maxlength="50" value="" errorStyleClass="error"
                               errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
        <div class="form-group">
            <label for="contacto">Contacto</label>
            <html:errors  property="RIF"/>
            <html:text name="Proveedor" property="contacto" maxlength="50" value="" errorStyleClass="error"
                               errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
        <div class="form-group">
            <label for="resena">Reseña</label>
            <html:errors  property="RIF"/>
            <html:text name="Proveedor" property="resena" value="" errorStyleClass="error"
                                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>

            
            
    <p style="text-align: center">
        <html:submit styleClass="btn btn-primary" onclick="javascript: return confirm('¿Esta seguro de que los datos son correctos?')">
            Agregar Proveedor
        </html:submit>
        <html:reset styleClass="btn btn-default" value="Limpiar"/>
    </p>

</html:form>   