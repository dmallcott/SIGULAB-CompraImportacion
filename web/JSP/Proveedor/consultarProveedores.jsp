<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>


<style type="text/css">
 .table-scrollable{
    overflow: auto;
}

</style>
<logic:present name="eliminado">
    <br>
    <p align ="center" style="background-color: springgreen;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor eliminado exitosamente.
    </p>
</logic:present>
<logic:present name="noEliminado">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
        Proveedor no pudo ser eliminado.
    </p>
</logic:present>
<logic:present name="deshabilitado">
    <br>
    <p align ="center" style="background-color: springgreen;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor deshabilitado exitosamente.
    </p>
</logic:present>
<logic:present name="noDeshabilitado">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
        Proveedor no pudo ser deshabilitado.
    </p>
</logic:present>
<logic:present name="editado">
    <br>
    <p align ="center" style="background-color: springgreen;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Resena editada exitosamente.
    </p>
</logic:present>
<logic:present name="noConsulta">
    <br>
    <p align ="center" style="background-color: firebrick;
       width: 300px; margin-left: auto; margin-right: auto; color: white"> 
        No pudo realizarse la consulta.
    </p>
</logic:present>  

  <div class="panel panel-primary  span11 table-scrollable" style="width: auto;margin-left: -23px">
  <!-- Default panel contents -->
<!--  <div class="panel-heading">Proveedores</div>-->
  <!-- Table -->

  <table class="table table-hover">
      <thead style=" background: #428bca">
      <tr>
        <th> RIF </th>
        <th> Compañía </th>
        <th> Telefono </th>
        <th> Reseña </th>
        <th> Estado </th>
        <th> Editar </th>
        <th> Deshabilitar </th>
        <th> Eliminar </th>
      </tr>
      </thead>
      
      <logic:iterate name="proveedores" id="Proveedores">
    <tr>
        <td nowrap>
            <p><bean:write name="Proveedores" property="RIF"></bean:write></p>
            </td>
            <td>
            <bean:write name="Proveedores" property="compania"></bean:write>
            </td>
            <td>
                <p><bean:write name="Proveedores" property="contacto"></bean:write></p>
            </td>
            <td>
                <p style="overflow: auto;"><bean:write name="Proveedores" property="resena"></bean:write></p>
            </td>
            <td>
                <p style="overflow: auto;">
                <logic:equal name="Proveedores" property="deshabilitado" value="true" >OK</logic:equal>
                <logic:equal name="Proveedores" property="deshabilitado" value="false" >Deshabilitado</logic:equal>
                </p>
            </td>
            <td>
            <html:form action="/reqEditarResena" onsubmit="return(this)">
                <html:hidden name="Proveedores" property="RIF"/>
                <html:hidden name="Proveedores" property="resena"/>

                <html:submit styleClass="button">
                    Editar Resena
                </html:submit>
            </html:form>
        </td>
        <td>
            <html:form action="/deshabilitarProveedor" onsubmit="return(this)">
                <html:hidden name="Proveedores" property="RIF"/>
                <html:submit>
                    Deshabilitar
                </html:submit>
            </html:form>
        </td>
        <td>
            <html:form action="/eliminarProveedor" onsubmit="return(this)">
                <html:hidden name="Proveedores" property="RIF"/>
                <html:submit>
                    Eliminar
                </html:submit>
            </html:form>
        </td>
    </tr>
</logic:iterate> 
  </table>
</div>