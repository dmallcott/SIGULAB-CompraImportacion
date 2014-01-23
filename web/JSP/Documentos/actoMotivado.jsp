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
                <td><html:text property="fecha" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="fecha"/></td>
            </tr>
            
             <div class="form-group">
             <label for="proveedor">Proveedor</label>
             <html:errors  property="proveedor"/>
             <html:text property="proveedor" maxlength="100" value="" onclick="this.value = ''" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>           
            
             <div class="form-group">
             <label for="bienOServicio">Bien o Servicio</label>
             <html:errors  property="bienOServicio"/>
             <html:text property="bienOServicio" maxlength="100" value="" onclick="this.value = ''" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div> 
        
             <div class="form-group">
             <label for="motivoReq">Motivo Requerimiento</label>
             <html:errors  property="motivoReq"/>
             <html:text property="motivoReq" maxlength="200" value="" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>   
             
             <div class="form-group">
             <label for="responsable">Responsable</label>
             <html:errors  property="responsable"/>
             <html:text property="responsable" maxlength="50" value="" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
            </div>  
             
             <div class="form-group">
             <label for="justificacion">Justificación</label>
             <html:errors  property="responsable"/>
             <html:text property="responsable" maxlength="300" value="" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
             </div>             
             
             <div class="form-group">
             <label for="proveniente">Proveniente</label>
             <html:errors  property="proveniente"/>
             <html:text property="proveniente" maxlength="20" value="" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
             </div>
             
             <div class="form-group">
             <label for="cargo">Cargo</label>
             <html:errors  property="cargo"/>
             <html:text property="cargo" maxlength="50" value="" errorStyleClass="error"
                        errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
             </div>             
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>