<%-- 
    Document   : index
    Created on : Nov 30, 2013, 3:50:57 PM
    Author     : Gustav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header><br>
            <b><h1>
                    <a href="" style="text-decoration: none">
                        <p align="center">
                            Sistema Integrado de Gestión <br> de la Unidad de Laboratorios (SIGULAB)
                        </p>
                    </a>
                </h1>
            </b>
        </header>

        <div id="block-block-2" class="block block-block first" style="float:right"><p class="banners"
        <div class="inner" align="right">
            <div class="content">
                <p><a href="http://www.ulab.usb.ve"><img alt="" src="imagenes/logo_ulab.gif"></a></p>
                <p><img alt="" src="imagenes/innovar.gif"></p>
                <p><a href="http://www.ulab.usb.ve/jornadas"><img alt="" src="imagenes/stickers_jornadas.jpg"></a></p>
                <p><a href="http://159.90.91.211/sites/default/files/catalogo_ulab.pdf"><img alt="" src="imagenes/cat_ulab.jpg"></a></p>
                <p><a href="http://159.90.91.211/node/26"><img alt="" src="imagenes/cons_ulab.jpg"></a></p>
                <p><a href="http://159.90.91.211/node/27"><img alt="" src="imagenes/doc_ulab.jpg"></a></p>
                <p><a href="http://159.90.91.211/node/25"><img alt="" src="imagenes/comit_ulab.jpg"></a></p>
                <p><a href="https://www.facebook.com/pages/Unidad-de-Laboratorios-USB/173900382644914" target="_blank">
                        <img alt="" src="imagenes/facebook.gif"></a></p>
                <p><img alt="" src="imagenes/somosusb.gif"></p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>
        </div>
    </p>
</div>

<div id="sidebar" class="sidebar primary">

    <h2><ul id="nav" style="padding-left: 5.2cm;">
            <b><h3>Módulo de adquisiciones<br> e importaciones</h3></b>
            <li class="parent"><a><div>Solicitud nueva</div></a>
                <ul class="sub-nav">
                    <li><h2><a>Materiales y equipos</a></h2></li>
                    <li><h2><a>Reparaciones y otros</a></h2></li>
                </ul>
            <li><a>Verificar estatus</a></li>
            <li><a>Lista de solicitudes activas</a></li>
            </li>
        </ul></h2>
    <h2> <ul id="nav2" style="padding-left:7.15cm">
            <li class="parent2">Catálogo de compras
                <ul class="sub-nav2">
                    <li><h2><html:link action="/consultarCompras">Consultar compras</html:link></h2></li>
                </ul>
            </li>
        </ul></h2>
    <h2> <ul id="nav3" style="padding-left:6.6cm">
            <li class="parent3">Catálogo de proveedores
                <ul class="sub-nav3">
                    <li><h2><html:link action="/reqAgregarProveedor">Agregar proveedor</html:link></h2></li>
                    <li><h2><html:link action="/consultarProveedores">Consultar proveedor</html:link></h2></li>    
                </ul>
            </li>
        </ul></h2>
</div>

<footer id="footer" class="section section-footer clearfix" role="footer" align="bottom">
    <div class="region region-footer">
        <div id="block-block-1" class="block block-block first">
            <div class="inner">
                <div class="content">
                    <table align="left" border="0" cellpadding="1" cellspacing="1"><tbody><tr><td valign="bottom" width="95">
                                    <a href="http://www.usb.ve"><img alt="" src="imagenes/cebolla_70_45.jpg"></a></td>
                                <td valign="bottom">
                                    <a href="http://www.usb.ve/home/node/68">e-virtual</a> | <a href="https://webmail.usb.ve/" target="_blank">Correo</a> |<a href="http://www.usb.ve/buscador.php" target="_blank"> </a><a href="https://esopo.usb.ve">esopo</a> |<a href="http://www.usb.ve/buscador.php" target="_blank"> </a><a href="http://www.youtube.com/canalusb" target="_blank">canalUSB</a> | <a href="http://www.usb.ve/agenda.php" target="_blank">Agenda Cultural</a> | <a href="http://usbnoticias.info/" target="_blank">USBnoticias</a> |<span> </span><span> </span><a href="http://www.usb.ve/home/node/55">Calendario</a> |<br>
                                    Sede Sartenejas, Baruta, Edo. Miranda - Apartado 89000 - Cable Unibolivar - Caracas Venezuela. Teléfono +58 0212-9063111<br>
                                    Sede Litoral, Camurí Grande, Edo. Vargas Parroquia Naiguatá. Teléfono +58 0212-9069000<br>
                                    Diseñada y desarrollada por la Dirección de Servicios Multimedia <a href="mailto:webmaster@usb.ve">webmaster@usb.ve</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
    </div>
</footer>


</body>
</html>
