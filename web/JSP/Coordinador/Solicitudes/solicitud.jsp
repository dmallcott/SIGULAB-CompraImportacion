<%-- 
    Document   : solicitudDetalle
    Created on : Jan 14, 2014, 1:35:36 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:form action="/reqEditarCartaInvitacion" onsubmit="return(this)">
    <logic:empty property="codCartaInvitacion">
        <html:submit>Nuevo</html:submit>
    </logic:empty>
    <logic:notEmpty property="codCartaInvitacion">
        <html:submit>Editar</html:submit>
    </logic:notEmpty>
</html:form>
    
<html:form action="/descargarDocumento" onsubmit="return(this)">
    <html:hidden property="codCartaInvitacion"/>
    <html:submit>Descargar</html:submit>
</html:form>