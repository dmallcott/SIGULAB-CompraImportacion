<%-- 
    Document   : solicitudDetalle
    Created on : Jan 14, 2014, 1:35:36 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<div class="row" >
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
        <logic:empty name="expediente" property="codCartaInvitacion">
        <html:form action="/reqAgregarCartaInvitacion" onsubmit="return(this)">
        <html:submit>Nuevo</html:submit>
        </html:form>
    </logic:empty> 
        
    <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
    <div class="caption">
    <h3>Acto Motivado</h3>
   
        <logic:notEmpty name="expediente" property="codCartaInvitacion">
        <html:form action="/reqEditarCartaInvitacion" onsubmit="return(this)">
        <html:submit  styleClass="btn btn-default">Editar</html:submit>
        </html:form>
        </logic:notEmpty>
                  
                  
        <html:form action="/descargarCartaInvitacion" onsubmit="return(this)">
        <html:hidden name="expediente" property="codCartaInvitacion"/>
        <html:submit style="margin-top:10px" styleClass="btn btn-primary">Descargar</html:submit>
        </html:form>
   
            </div>
        </div>
    </div>
</div>
    
    