<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html version="HTML+RDFa 1.0" lang="es" dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>SIGULAB: Bienvenido</title>
        <link rel="stylesheet" type="text/css" href="./includes/css/layout.css"/>
        <link rel="stylesheet" type="text/css" href="./includes/css/forms.css"/>
        <link rel="stylesheet" type="text/css" href="./includes/css/colors.css"/>
        <link rel="stylesheet" type="text/css" href="./includes/css/style.css"/>
        <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script type='text/javascript' src='./scripts/jquery-1.10.2.min.js'></script>
        <script type='text/javascript' src='./includes/script.js'></script>
    </head>

    <%@include file="/includes/banner.jsp" %>

    <!--MAIN BODY-->

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
                                        <h2 property="dc:title" datatype="" class="title node-title">Consultar Compras</h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                            <div class="field-items">
                                                <div class="field-item even" property="content:encoded">
                                                    <div id="consultCompra" style="width: 100%">
                                                        <table border="1" style="width: 100%; text-align: center;">
                                                            <thead>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Orden de Compra/Servicio</th> 
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Status</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Tipo</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Partida Presupuestaria</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Recepción de Certificación Presupuestaria</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Tipo de Pago</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Pago</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Pago</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Total de Gravemenes</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Monto de Factura</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Tipo de Certificación de Servicio</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Numero de Certificación de Servicio</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Certificación de Servicio</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Informe de Recepción</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Factura</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Factura</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Ubicación</th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Observaciones</th>             
                                                            </thead>
                                                            <tbody >

                                                                <logic:iterate name="compras" id="Compras">
                                                                    <tr>
                                                                        <td>
                                                                            <bean:write name="Compras" property="numOrden"></bean:write>
                                                                            </td>                        
                                                                            <td>
                                                                            <bean:write name="Compras" property="status"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="tipo"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="fechaPartPresu"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="fechaRecepCertPresu"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="tipoPago"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="numeroPago"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="fechaPago"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="totalGravemenes"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="montoFactura"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="tipoCertServ"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="numeroCertServ"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="fechaCertServ"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="NIR"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="numeroFactura"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="fechaFactura"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="ubicacion"></bean:write>
                                                                            </td>
                                                                            <td>
                                                                            <bean:write name="Compras" property="obs"></bean:write>
                                                                            </td>

                                                                        </tr>
                                                                </logic:iterate> 
                                                            </tbody>

                                                        </table>




                                                    </div>
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>

                <%@include file="/includes/Lsidebar.jsp" %>
            </div>
            <%@include file="/includes/footer.jsp" %>
        </div>
    </body>
</html>