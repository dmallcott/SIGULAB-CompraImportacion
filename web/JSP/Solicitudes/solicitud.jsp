<%-- 
    Document   : solicitudDetalle
    Created on : Jan 14, 2014, 1:35:36 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<table>
    <tr>
        <td>
            <div class="thumbnail">
                <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
                <div class="caption">
                    <h4>Especificacion Tecnica del Bien</h4>
                    <logic:empty name="expediente" property="codEspecificacionBien">
                        <html:form  onsubmit="return(this)">
                            <html:submit styleClass="btn btn-default">Nuevo</html:submit>
                        </html:form>
                    </logic:empty>
                    <logic:notEmpty name="expediente" property="codEspecificacionBien">
                        <html:form  onsubmit="return(this)">
                            <html:submit  styleClass="btn btn-default">Editar</html:submit>
                        </html:form>

                        <html:form onsubmit="return(this)">
                            <html:hidden name="expediente" property="codEspecificacionBien"/>
                            <html:submit style="margin-top:10px" styleClass="btn btn-primary">Descargar</html:submit>
                        </html:form>
                    </logic:notEmpty>
                </div>
            </div>
        </td>
    </tr>
    <logic:greaterThan name="tipo" value="0">
        <tr>
            <td>
                <div class="thumbnail">
                    <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
                    <div class="caption">
                        <h4>Cotizaciones</h4>
                        <html:form onsubmit="return(this)">
                            <html:hidden name="expediente" property="codEspecificacionBien"/>
                            <html:submit styleClass="btn btn-default">Ver</html:submit>
                        </html:form>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
                    <div class="caption">
                        <h4>Informe de Recomendacion</h4>
                        <logic:empty name="expediente" property="codEspecificacionBien">
                            <html:form  onsubmit="return(this)">
                                <html:submit styleClass="btn btn-default">Nuevo</html:submit>
                            </html:form>
                        </logic:empty>
                        <logic:notEmpty name="expediente" property="codEspecificacionBien">
                            <html:form  onsubmit="return(this)">
                                <html:submit  styleClass="btn btn-default">Editar</html:submit>
                            </html:form>

                            <html:form onsubmit="return(this)">
                                <html:hidden name="expediente" property="codEspecificacionBien"/>
                                <html:submit style="margin-top:10px" styleClass="btn btn-primary">Descargar</html:submit>
                            </html:form>
                        </logic:notEmpty>
                    </div>
                </div>
            </td>
        </tr>
        <tr >
            <td colspan="2">
                <div class="thumbnail" style="background: #269abc">
                    <div class="caption" style="text-align: center">
                        <h3 style="margin-top: 0; color: white;">Revision de Presupuesto</h3>
                    </div>
                </div>
            <td>
        </tr>
        <tr>
            <td>
                <div class="thumbnail">
                    <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
                    <div class="caption">
                        <h4>Requisicion</h4>
                        <logic:empty name="expediente" property="codEspecificacionBien">
                            <html:form  onsubmit="return(this)">
                                <html:submit styleClass="btn btn-default">Nuevo</html:submit>
                            </html:form>
                        </logic:empty>
                        <logic:notEmpty name="expediente" property="codEspecificacionBien">
                            <html:form  onsubmit="return(this)">
                                <html:submit  styleClass="btn btn-default">Editar</html:submit>
                            </html:form>

                            <html:form onsubmit="return(this)">
                                <html:hidden name="expediente" property="codEspecificacionBien"/>
                                <html:submit style="margin-top:10px" styleClass="btn btn-primary">Descargar</html:submit>
                            </html:form>
                        </logic:notEmpty>
                    </div>
                </div>
            </td>
        </tr>  
    </logic:greaterThan>
    <logic:greaterThan name="tipo" value="1">
        <tr> 
            <td>
                <div class="thumbnail">
                    <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
                    <div class="caption">
                        <h4>Acto Motivado</h4>
                        <logic:empty name="expediente" property="codEspecificacionBien">
                            <html:form  onsubmit="return(this)">
                                <html:submit styleClass="btn btn-default">Nuevo</html:submit>
                            </html:form>
                        </logic:empty>
                        <logic:notEmpty name="expediente" property="codEspecificacionBien">
                            <html:form  onsubmit="return(this)">
                                <html:submit  styleClass="btn btn-default">Editar</html:submit>
                            </html:form>

                            <html:form onsubmit="return(this)">
                                <html:hidden name="expediente" property="codEspecificacionBien"/>
                                <html:submit style="margin-top:10px" styleClass="btn btn-primary">Descargar</html:submit>
                            </html:form>
                        </logic:notEmpty>
                    </div>
                </div>
            </td>
            <td>
                <div class="thumbnail">
                    <img class="img-rounded" src="./Plantilla/static/img/actomotivado.png">
                    <div class="caption">
                        <h4>Carta Invitacion</h4>
                        <logic:empty name="expediente" property="codCartaInvitacion">
                            <html:form action="/reqAgregarCartaInvitacion" onsubmit="return(this)">
                                <html:submit styleClass="btn btn-default">Nuevo</html:submit>
                            </html:form>
                        </logic:empty>
                        <logic:notEmpty name="expediente" property="codCartaInvitacion">
                            <html:form action="/reqEditarCartaInvitacion" onsubmit="return(this)">
                                <html:submit  styleClass="btn btn-default">Editar</html:submit>
                            </html:form>



                            <html:form action="/descargarCartaInvitacion" onsubmit="return(this)">
                                <html:hidden name="expediente" property="codCartaInvitacion"/>
                                <html:submit style="margin-top:10px" styleClass="btn btn-primary">Descargar</html:submit>
                            </html:form>
                        </logic:notEmpty>
                    </div>
                </div>
            </td>
        </tr>
    </logic:greaterThan>
</table>
