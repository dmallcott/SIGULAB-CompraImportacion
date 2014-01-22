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
    <table border="0">
        <tbody>
            <tr>
                <td>Para: UNIDAD DE LABORATORIOS</td>
            </tr>
            <tr>
                <td style="color: black">De:</td>
                <td><html:text property="de" maxlength="30" value=""></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Fecha</td>
                <td><html:text property="fecha" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fecha"/></td>
            </tr>
            <tr>
                <td style="color: black">Nombre del Bien</td>
                <td><html:text property="nomBien" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="nombreBien"/></td>
            </tr>    
            <tr>
                <td style="color: black">Numero de Bien Nacional</td>
                <td><html:text property="noBienNacional" maxlength="20" value=""></html:text></td>
            </tr> 
            <tr>
                <td style="color: black">Ubicacion</td>
                <td><html:text property="ubicacion" maxlength="60" value=""></html:text></td>
            </tr>      
            <tr>
                <td style="color: black">Descripcion Detallada del Bien</td>
                <td><html:text property="descripcion" maxlength="300" value=""></html:text></td>
            </tr>           
            <tr>
                <td style="color: black">Persona Contacto de la Unidad Solicitante</td>
                <td><html:text property="contacto" maxlength="30" value=""></html:text></td>
            </tr>            
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="contacto"/></td>
            </tr>               
            <tr>
                <td style="color: black">E-mail</td>
                <td><html:text property="correo" maxlength="30" value="XXXX@usb.ve" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>           
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="correo"/></td>
            </tr>       
            <tr>
                <td style="color: black">Telefonos</td>
                <td><html:text property="telefono" maxlength="30" value="0212-XXXXXXX" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>     
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="telefono"/></td>
            </tr>                   
            <tr>
                <td style="color: black">Compania</td>
                <td><html:text property="compania" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="compania"/></td>
            </tr>
            <tr>
                <td style="color: black">Contacto en la Compania</td>
                <td><html:text property="contactoCompania" maxlength="30" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="contactoCompania"/></td>
            </tr>
            <tr>
                <td style="color: black">Telefonos</td>
                <td><html:text property="telefonoCompania" maxlength="12" value="0212-XXXXXXX" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="telefonoCompania"/></td>
            </tr>
            <tr>
                <td style="color: black">Fecha de la Cotizacion</td>
                <td><html:text property="fechaCotizacion" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fechaCotizacion"/></td>
            </tr>
            <tr>
                <td style="color: black">No. Cotizacion</td>
                <td><html:text property="noCotizacion" maxlength="8"></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Monto Total del Servicio (Bs.)</td>
                <td><html:text property="monto" maxlength="20" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="monto"/></td>
            </tr>
            <tr>
                <td style="color: black">Observaciones</td>
                <td><html:text property="observaciones" maxlength="200" value=""></html:text></td>
            </tr>
            <tr>
                <td style="color: black">Proyecto POA</td>
                <td><html:text property="proyectoPOA" maxlength="20" value=""></html:text></td>
            </tr>            
            <tr>
                <td style="color: black">Enunciado</td>
                <td><html:text property="enunciado" maxlength="30" value=""></html:text></td>
            </tr>            
            <tr>
                <td style="color: black">Observaciones</td>
                <td><html:text property="observaciones" maxlength="200" value=""></html:text></td>
            </tr>            
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>
