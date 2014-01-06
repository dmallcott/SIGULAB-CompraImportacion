<%-- 
    Document   : Login
    Created on : Jan 5, 2014, 3:59:59 PM
    Author     : daniel
--%>
<%-- 
    Document   : plantilla
    Created on : Dec 30, 2013, 7:13:09 PM
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>  

<html:html lang="true">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Inicio Sesion</title>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/layout.css"/>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/forms.css"/>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/colors.css"/>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/style.css"/>
        <script type='text/javascript' src='./Plantilla/static/scripts/jquery-1.10.2.min.js'></script>
        <script type='text/javascript' src='./Plantilla/static/scripts/script.js'></script>
    </head>
    <body>

        <div align="center">
            <a><html:link action="/home"><img src="./Plantilla/static/img/banner.jpg" alt="Inicio"/></html:link></a>
            </div>


        <body class="html front not-logged-in two-sidebars page-node" style="">
            <div id="container" class="container-16">
                <header id="header" class="section section-header clearfix" role="banner"></header>
                <div id="main" class="section section-main clearfix" role="main">
                    <div id="content" class="column grid-10 push-3">
                        <div class="inner">
                            <div id="main-content" class="clearfix">
                                <div class="region region-content">
                                    <article id="node-53" class="node node-article node-promoted node-teaser clearfix" about="/node/53" typeof="sioc:Item foaf:Document" role="article">
                                        <header class="clearfix">
                                            <h2 property="dc:title" datatype="" class="title node-title">Inicio de Sesion</h2>
                                        </header>
                                        <div class="content clearfix">
                                            <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                                <div class="field-items">
                                                    <div class="field-item even" property="content:encoded">
                                                    <html:form action="/login" acceptCharset="ISO=8859-1" onsubmit="return(this)" style="text-align: center">
                                                        <div id="welcome">
                                                            <p>Por razones de seguridad, por favor cierre la sesión y su navegador web cuando haya terminado de acceder a los servicios que requieren autenticación.</p>
                                                            <p style="text-align: center"><strong>Introduzca su USBID y Contraseña</strong></p>
                                                            <table border="0" style="text-align: center">
                                                                <tbody>
                                                                <td>USBID:</td>
                                                                </tr>
                                                                <tr>
                                                                    <td><html:text property="usbid" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="color: red">
                                                                        <html:errors property="usbid" /> 
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Contraseña:</td>
                                                                </tr>
                                                                <tr>
                                                                    <td><html:password property="contrasena" /></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="color: red">
                                                                        <html:errors property="contrasena" /> 
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <html:submit value="Login" />
                                                                        <html:reset value="Limpiar" />
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                    </html:form>

                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--FOOTER-->
            <footer id="footer" class="section section-footer clearfix" role="footer">
                <div class="region region-footer">
                    <div id="block-block-1" class="block block-block first">
                        <div class="inner">
                            <div class="content">
                                <table align="left" border="0" cellpadding="1" cellspacing="1"><tbody><tr><td valign="bottom" width="95">
                                                <a href="http://www.usb.ve"><img alt="" src="./Plantilla/static/img/cebolla_70_45.jpg"></a></td>
                                            <td valign="bottom">
                                                <a href="http://www.usb.ve/home/node/68">e-virtual</a> | 
                                                <a href="https://webmail.usb.ve/" target="_blank">Correo</a> |
                                                <a href="http://www.usb.ve/buscador.php" target="_blank"> </a><a href="https://esopo.usb.ve">esopo</a> |
                                                <a href="http://www.usb.ve/buscador.php" target="_blank"> </a><a href="http://www.youtube.com/canalusb" target="_blank">canalUSB</a> | 
                                                <a href="http://www.usb.ve/agenda.php" target="_blank">Agenda Cultural</a> |
                                                <a href="http://usbnoticias.info/" target="_blank">USBnoticias</a> |<span> </span><span> </span><a href="http://www.usb.ve/home/node/55">Calendario</a> 
                                                |<br>
                                                Sede Sartenejas, Baruta, Edo. Miranda - Apartado 89000 - Cable Unibolivar - Caracas Venezuela. Teléfono +58 0212-9063111<br>
                                                Sede Litoral, Camurí Grande, Edo. Vargas Parroquia Naiguatá. Teléfono +58 0212-9069000<br>
                                                Diseñada y desarrollada por la Dirección de Servicios Multimedia <a href="mailto:webmaster@usb.ve">webmaster@usb.ve</a>
                                            </td>
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
</html:html>