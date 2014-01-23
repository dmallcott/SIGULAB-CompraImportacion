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
            <div>
                <h3>Especificacion Tecnica del Bien</h3>
                <logic:empty name="expediente" property="codEspecificacionBien">
                    <html:form onsubmit="return(this)">
                        <html:submit>Nuevo</html:submit>
                    </html:form>
                </logic:empty>

                <logic:notEmpty name="expediente" property="codEspecificacionBien">
                    <html:form onsubmit="return(this)">
                        <html:submit>Editar</html:submit>
                    </html:form>
                </logic:notEmpty>


                <html:form onsubmit="return(this)">
                    <html:hidden name="expediente" property="codCartaInvitacion"/>
                    <html:submit>Descargar</html:submit>
                </html:form>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div>
                <h3>Cotizaciones</h3>
                
                <html:form onsubmit="return(this)">
                    <html:submit>Ver</html:submit>
                </html:form>

                <html:form onsubmit="return(this)">
                    <html:hidden name="expediente" property="codRequesicion"/>
                    <html:submit>Descargar</html:submit>
                </html:form>
            </div>
        </td>
        <td>
            <div>
                <h3>Informe de Recomendacion</h3>
                <logic:empty name="expediente" property="codInformeRecomendacion">
                    <html:form onsubmit="return(this)">
                        <html:submit>Nuevo</html:submit>
                    </html:form>
                </logic:empty>

                <logic:notEmpty name="expediente" property="codInformeRecomendacion">
                    <html:form onsubmit="return(this)">
                        <html:submit>Editar</html:submit>
                    </html:form>
                </logic:notEmpty>


                <html:form onsubmit="return(this)">
                    <html:hidden name="expediente" property="codInformeRecomendacion"/>
                    <html:submit>Descargar</html:submit>
                </html:form>
            </div>
        </td>
    </tr>
    <tr style="height: 50px; text-align: center; background: blue; color:white;">
    <td class="row">REVISION DE PRESUPUESTO<td>
    </tr>
    <tr>
        <td>
            <div>
                <h3>Requisicion</h3>
                <logic:empty name="expediente" property="codRequesicion">
                    <html:form onsubmit="return(this)">
                        <html:submit>Nuevo</html:submit>
                    </html:form>
                </logic:empty>

                <logic:notEmpty name="expediente" property="codRequesicion">
                    <html:form onsubmit="return(this)">
                        <html:submit>Editar</html:submit>
                    </html:form>
                </logic:notEmpty>


                <html:form onsubmit="return(this)">
                    <html:hidden name="expediente" property="codRequesicion"/>
                    <html:submit>Descargar</html:submit>
                </html:form>
            </div>
        </td>
    </tr>     
    <tr> 
        <td>
            <div>
                <h3>Acto Motivado</h3>
                <logic:empty name="expediente" property="codActoMotivado">
                    <html:form onsubmit="return(this)">
                        <html:submit>Nuevo</html:submit>
                    </html:form>
                </logic:empty>

                <logic:notEmpty name="expediente" property="codActoMotivado">
                    <html:form onsubmit="return(this)">
                        <html:submit>Editar</html:submit>
                    </html:form>
                </logic:notEmpty>


                <html:form onsubmit="return(this)">
                    <html:hidden name="expediente" property="codActoMotivado"/>
                    <html:submit>Descargar</html:submit>
                </html:form>
            </div>
        </td>
        <td>
            <div>
                <h3>Carta de Invitacion</h3>
                <logic:empty name="expediente" property="codCartaInvitacion">
                    <html:form action="/reqAgregarCartaInvitacion" onsubmit="return(this)">
                        <html:submit>Nuevo</html:submit>
                    </html:form>
                </logic:empty>

                <logic:notEmpty name="expediente" property="codCartaInvitacion">
                    <html:form action="/reqEditarCartaInvitacion" onsubmit="return(this)">
                        <html:hidden name="expediente" property="codCartaInvitacion"/>
                        <html:submit>Editar</html:submit>
                    </html:form>
                </logic:notEmpty>


                <html:form action="/descargarCartaInvitacion" onsubmit="return(this)">
                    <html:hidden name="expediente" property="codCartaInvitacion"/>
                    <html:submit>Descargar</html:submit>
                </html:form>
            </div>
        </td>
    </tr>

</table>
