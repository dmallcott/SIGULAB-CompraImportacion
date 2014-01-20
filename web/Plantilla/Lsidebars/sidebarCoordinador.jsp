<%-- 
    Document   : sideLAdmin
    Created on : Jan 5, 2014, 3:39:12 PM
    Author     : daniel
--%>

<%--
    Documento   : BarraIzq.jsp
    Creado por  : Acro Systems
                  Carla Barazarte
                  Samantha Campisi
                  Carlos Cruz
                  Alejandro Garbi
                  Ramón Marquez
                  Esteban Oliveros
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
</style>

<div id="left">
    <div id="sidebar-first" class="sidebar grid-3 pull-10">
        <div class="region region-sidebar-first">
            <div id="block-system-main-menu" class="block block-system block-menu first">
                <div class="inner">
                    <div class="content">
                        <ul class="menu">
                            <li class="first leaf">
                                <a href="#">Catalogo de proveedores</a>
                            </li>
                            <ul class="sub-nav" style="display:none">
                                <li><a><html:link action="/reqAgregarProveedor">Agregar proveedor</html:link></a></li>
                                <li><a><html:link action="/consultarProveedores">Consultar proveedores</html:link></a></li>
                            </ul>
                        </ul>
                        <ul class="menu1">
                            <li class="first leaf">
                                <a href="#">Documentos</a>
                            </li>
                            <ul class="sub-nav2" style="display:none; list-style:none;">

                                <li><a><html:link action="/reqAgregarCartaInvitacion">Agregar carta de invitacion</html:link></a></li>
                                <li><a><html:link action="/reqAgregarCotizacion">Agregar cotizacion</html:link></a></h6></li>
                                <li><a><html:link action="/reqAgregarEspecificacionTecnica">Agregar Especificacion Tecnica</html:link></a></li>
                                <li><a><html:link action="/reqAgregarInformeRecomendacion">Agregar Informe de Recomendacion</html:link></a></li> 
                                <li><a><html:link action="/reqAgregarActoMotivado">Agregar Acto Motivado</html:link></a></li> 
                                <li><a><html:link action="/reqAgregarNotaDevolucion">Agregar Nota Devolucion</html:link></a></li> 
                                <li><a><html:link action="/reqAgregarSolicitudServicio">Agregar Solicitud de Servicio</html:link></a></li> 
                            </ul>
                        </ul>
                        <ul class="menu2">
                            <li class="first last leaf">
                                <a><html:link action="/consultarCompras">Registro de Compras</html:link></a>
                            </li>
                        </ul>
                        <div id="block-system-main-menu" class="block block-menu">
                            <ul>
                                <li class="first last leaf">
                                    <a><html:link action="/cerrarSesion">Salir</html:link></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>