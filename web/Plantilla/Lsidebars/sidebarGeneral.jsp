<%-- 
    Document   : sideLAdmin
    Created on : Jan 5, 2014, 3:39:12 PM
    Author     : daniel
--%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<!--SIDEBAR-->
<div id="sidebar-first" class="sidebar grid-3 pull-10">
    <div class="region region-sidebar-first">
        <div id="block-system-main-menu" class="block block-system block-menu first">
            <div class="inner">
                <div class="content">
                    <ul class="menu">
                        <li class="first leaf">
                            <a href="#">Catalogo de proveedores</a>
                        </li>
                        <ul class="sub-nav" style="display:none; list-style:none;">
                            <li><h6 style="margin:0;"><a><html:link action="/consultarProveedores">Consultar proveedores</html:link></a></h6></li>
                        </ul>
                    </ul>
                    <ul class="menu3">
                        <li class="first leaf">
                            <a href="#">Nueva Solicitud</a>
                        </li>
                        <ul class="sub-nav2" style="display:none; list-style:none;">

                            <li><h6 style="margin:0;"><a><html:link action="/reqNuevaSolicitudCompra">Solicitud de Compra</html:link></a></h6></li>
                            <li><h6 style="margin:0;"><a><html:link action="/reqNuevaSolicitudServicio">Solicitud de Servicio</html:link></a></h6></li>
                    </ul>
                    <div id="block-system-main-menu" class="block block-menu">
                        <ul class="menu">
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