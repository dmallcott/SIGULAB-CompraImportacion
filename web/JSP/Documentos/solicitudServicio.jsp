<%-- 
    Document   : solicitudServicio
    Created on : Jan 9, 2014, 11:53:54 PM
    Author     : patrick
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

<html:form action="/agregarSolicitudServicio" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">

           
       <h6>Para: UNIDAD DE LABORATORIOS</h6>
          
            
        <div class="form-group">
            <label for="de">De</label>
            <html:errors  property="de"/>
            <html:text property="de" value="" maxlength="30"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            

            <tr>
                <td style="color: black">Fecha</td>
                <td><html:text property="fecha" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fecha"/></td>
            </tr>
            
        <div class="form-group">
            <label for="nomBien">Nombre del Bien</label>
            <html:errors  property="nomBien"/>
            <html:text property="nomBien" value="" maxlength="50"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
            
        <div class="form-group">
            <label for="noBienNacional">Número del Bien Nacional</label>
            <html:errors  property="noBienNacional"/>
            <html:text property="noBienNacional" value="" maxlength="20"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>

        <div class="form-group">
            <label for="ubicacion">Ubicación</label>
            <html:errors  property="ubicacion"/>
            <html:text property="ubicacion" value="" maxlength="60"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            
            
        <div class="form-group">
            <label for="descripcion">Descripción Detallada del Bien</label>
            <html:errors  property="descripcion"/>
            <html:text property="descripcion" value="" maxlength="300"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
            
        <div class="form-group">
            <label for="contacto">Persona Contacto de la Unidad Solicitante</label>
            <html:errors  property="contacto"/>
            <html:text property="contacto" value="" maxlength="30"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
            
        <div class="form-group">
            <label for="correo">E-mail</label>
            <html:errors  property="correo"/>
            <html:text property="correo" value="XXXX@usb.ve" onclick="this.value = ''" maxlength="30"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>              

        <div class="form-group">
            <label for="telefono">Teléfono</label>
            <html:errors  property="telefono"/>
            <html:text property="telefono" value="0212-XXXXXXX" onclick="this.value =''" maxlength="30"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            
            
        <div class="form-group">
            <label for="compania">Compañía</label>
            <html:errors  property="compania"/>
            <html:text property="compania" value="" maxlength="50"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>                  

        <div class="form-group">
            <label for="contactoCompania">Contacto en la Compañía</label>
            <html:errors  property="contactoCompania"/>
            <html:text property="contactoCompania" value="" maxlength="30"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            
            
        <div class="form-group">
            <label for="telefonoCompania">Teléfono de la Compañía</label>
            <html:errors  property="telefonoCompania"/>
            <html:text property="telefonoCompania" value="0212-XXXXXXX" onclick="this.value =''" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
            

            <tr>
                <td style="color: black">Fecha de la Cotizacion</td>
                <td><html:text property="fechaCotizacion" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fechaCotizacion"/></td>
            </tr>
            
        <div class="form-group">
            <label for="noCotizacion">Número Cotización</label>
            <html:errors  property="noCotizacion"/>
            <html:text property="noCotizacion" value="" onclick="this.value =''" maxlength="8"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            

        <div class="form-group">
            <label for="monto">Monto Total del Servicio</label>
            <html:errors  property="monto"/>
            <html:text property="monto" value="" onclick="this.value =''" maxlength="20"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            
            
        <div class="form-group">
            <label for="observaciones">Observaciones</label>
            <html:errors  property="observaciones"/>
            <html:text property="observaciones" value="" onclick="this.value =''" maxlength="200"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>            
            
        <div class="form-group">
            <label for="proyectoPOA">Proyecto POA</label>
            <html:errors  property="proyectoPOA"/>
            <html:text property="proyectoPOA" value="" onclick="this.value =''" maxlength="20"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>
            
        <div class="form-group">
            <label for="enunciado">Enunciado</label>
            <html:errors  property="enunciado"/>
            <html:text property="enunciado" value="" onclick="this.value =''" maxlength="30"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>           

    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>
