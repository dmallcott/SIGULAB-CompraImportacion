<%-- 
    Document   : nuevaSolicitud
    Created on : Jan 22, 2014, 2:10:08 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:form action="/nuevaSolicitud" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table>
        
          <div class="form-group">
             <label for="resena">Descripción</label>
             <html:textarea property="descripcion" styleClass="form-control"></html:textarea>
          </div> 
          
          <label for="tipo">Tipo</label>
        <html:select styleClass="form-control" style="width:103px" property="tipo">
             <html:option value="compra">Compra</html:option>
             <html:option value="servicio">Servicio</html:option>
        </html:select>        

        <html:submit styleClass="btn btn-primary" style="margin-top:10px">Crear</html:submit>

    </table>
</html:form>
