<%-- 
    Document   : Login
    Created on : Jan 5, 2014, 3:59:59 PM
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css" media="all"> @import "Plantilla/static/css/Login/home.css"</style>
        <script src="/Plantilla/static/js/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
               $("#usbid").focus();
            });
        </script>
        <title>CAS-SIGULAB</title>
    </head>

    <body class="html front not-logged-in two-sidebars page-node">
        <div id="main" class="section section-main clearfix" role="main">
            <div id="container" class="container-16">

                <!--
                --
                -- COMIENZO DE LA PARTE CENTRAL
                --
                -->
                <table border="0" align="center">
                    <tr>
                        <td><table align="center">

                             <tr>
                             <td><html:image src="Plantilla/static/img/usb-logo.gif" /></td>
                             <td><b><h1 align="center">Universidad Simón Bolívar</h1>
                                     <h2 align="center"> Servicio Centralizado de Autenticación
                                         </h2></b></td>
                             </tr>


                             </table>
                        </td>
                    </tr>
                    <tr><td> <div id="content" class="column grid-10 push-3">
                     <html:form action="/login" acceptCharset="ISO=8859-1" onsubmit="validateUsuario(this)">
                        <html:javascript formName="Usuario" />
                        <div id="welcome">
                            <p>Por razones de seguridad, por favor cierre la sesión y su navegador web cuando haya terminado de acceder a los servicios que requieren autenticación.</p>
                            <p style="text-align: center"><strong>Introduzca su USBID y Contraseña</strong></p>
                            <table border="0" align="center">
                                <tbody>
                                <td>USBID:</td>
                                <tr>
                                    <td><html:text property="usbid" styleId="usbid"/></td>
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
                                        <table align="center">
                                            <tr>
                                                    <td><html:submit value="Login" /></td>
                                                <td><html:reset value="Limpiar" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                    </html:form>
                </div></td></tr>
                </table>
                <!--
                --
                -- FIN DE LA PARTE CENTRAL
                --
                -->
                <!-- Parte de la Derecha -->
                <div id="sidebar-second" class="sidebar grid-3"></div>
            </div>
        </div>
        <footer id="footer" class="section section-footer clearfix" role="footer">
            <div class="region region-footer">
                <div id="block-block-1" class="block block-block first">
                    <div class="inner">
                        <div class="content">
                            <table align="left" border="0" cellpadding="1" cellspacing="1">
                                <tr>
                                    <td valign="bottom" width="95"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>