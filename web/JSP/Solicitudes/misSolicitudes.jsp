<%-- 
    Document   : solicitudes
    Created on : Jan 14, 2014, 1:35:09 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<div class="panel panel-primary">
  <!-- Default panel contents -->
 <div class="panel-heading">Solicitudes</div>
  <!-- Table -->
  <table class="table">
    <thead>
        <th>C�digo</th>
        <th>Descripci�n</th>
        <th>Detalle</th>
    </thead>
    <tbody>
        <logic:iterate name="expedientes" id="exp">
        <tr>
            <td>
                <bean:write name="exp" property="codigo"></bean:write>
            </td>
            <td>
                <bean:write name="exp" property="descripcion"></bean:write>
            </td>
            <td>
                <html:form action="/reqVerSolicitud" onsubmit="return(this)">
                    <html:hidden name="exp" property="codigo"/>
                    <html:submit>Detalle</html:submit>
                </html:form>
            </td>
        </logic:iterate>
    </tbody>


  </table>
</div>



 