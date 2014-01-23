<%-- 
    Document   : sidebarL
    Created on : Jan 21, 2014, 8:59:49 PM
    Author     : daniel
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script> 
    
    $(document).ready(function() {
        $('.menu').click(function() {
            $('.sub-nav').toggle();
        });
        $('.menu1').click(function() {
            $('.sub-nav2').toggle();
        });
        $('.parent3').click(function() {
            $('.sub-nav3').toggleClass('visible');
        });
    });

</script>


<style type="text/css">
    li,a, a:hover {
        list-style-type:none;
        font-weight: bold;
        text-decoration: none;
        text-align: right;
    }
    
    #left {  
        width: 200px;          /* LC width */
        right: 200px;          /* LC width */
        margin-left: -100%;
    }
    
    ul#sub1 {
    position:absolute;
    left:0;
    width:125px;
    visibility: hidden;
}
u    ul#menu li:hover #sub1 {
    visibility:visible;
}
    #body {  
        font-size: 11px;
        margin-top:15px;
        left:-660px;
    }
    
    
</style>
<%--
    OJOOOOOOOOOOOOOO QUITA ESTA VAINA QUE SE VE DESDE CTRL+SHIFT+I
    Definicion de tipos:
        0 = Usuario General
        1 = Jefe de Lab
        2 = Asistente de Internacional
        3 = Asistente de Nacional
        4 = Coordinador Internacional
        5 = Coordinador Nacional
--%>
<div>
    <ul style="padding-left: 0;font-size: 11px">
        <li>
            <html:link action="/reqNuevaSolicitud">Nueva Solicitud</html:link>
        </li>
        <li>
            <html:link action="/misSolicitudes">Mis Solicitudes</html:link>
        </li>
        <li>
            <html:link action="/consultarProveedores">Catalogo de proveedores</html:link>
        </li>
        <logic:greaterThan name="tipo" value="2">
            <li class="sub-list">
                <html:link action="/reqAgregarProveedor">Agregar proveedor</html:link>
            </li>
            <li>
                <div>Documentos</div>
                <ul style="padding-left: 0">
                    <li> <html:link action="/reqAgregarCartaInvitacion">Agregar carta de invitacion</html:link></li>
                    <li><html:link action="/reqAgregarCotizacion">Agregar cotizacion</html:link></li>
                    <li><html:link action="/reqAgregarEspecificacionTecnica">Agregar Especificacion Tecnica</html:link></li>
                    <li><html:link action="/reqAgregarInformeRecomendacion">Agregar Informe de Recomendacion</html:link></li>
                    <li><html:link action="/reqAgregarActoMotivado">Agregar Acto Motivado</html:link></li>
                    <li><html:link action="/reqAgregarNotaDevolucion">Agregar Nota Devolucion</html:link></li>
                    <li><html:link action="/reqAgregarSolicitudServicio">Agregar Solicitud de Servicio</html:link></li>
                </ul>
            </li>
            </logic:greaterThan>
            <li>
                <html:link action="/cerrarSesion">Salir</html:link>
            </li>
    </ul>
</div>            
