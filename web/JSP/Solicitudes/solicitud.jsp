<%-- 
    Document   : solicitudDetalle
    Created on : Jan 14, 2014, 1:35:36 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


    <logic:empty name="expediente" property="codCartaInvitacion">
        <html:form action="/reqAgregarCartaInvitacion" onsubmit="return(this)">
            <html:submit>Nuevo</html:submit>
        </html:form>
    </logic:empty>

    <logic:notEmpty name="expediente" property="codCartaInvitacion">
        <html:form action="/reqEditarCartaInvitacion" onsubmit="return(this)">
            <html:submit>Editar</html:submit>
        </html:form>
    </logic:notEmpty>

    
<html:form action="/descargarCartaInvitacion" onsubmit="return(this)">
    <html:hidden name="expediente" property="codCartaInvitacion"/>
    <html:submit>Descargar</html:submit>
</html:form>