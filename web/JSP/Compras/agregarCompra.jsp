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
                                        <h2 property="dc:title" datatype="" class="title node-title">Agregar Compra</h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                            <div class="field-items">
                                                <div class="field-item even" property="content:encoded">
                                                    <html:form action="/agregarCompra" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
                                                        <table border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="color: black">Numero Orden</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="numOrden" maxlength="10" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="numOrden"/>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="color: black">Estatus</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="status" maxlength="10" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="status"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Tipo</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="tipo" maxlength="1" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="tipo"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Fecha Partida Presupuesto</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="fechaPartPresu"  value="YYYY-mm-dd" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR" ></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="fechaPartPresu"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Fecha Recepcion Certificada Presupuesto</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="fechaRecepCertPresu"  value="YYYY-mm-dd" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="fechaRecepCertPresu"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Tipo de pago</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="tipoPago" maxlength="10" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="tipoPago"/>
                                                                    </td>
                                                                </tr>      

                                                                <tr>
                                                                    <td style="color: black">Numero de pago</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="numeroPago" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="numeroPago"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Fecha de Pago</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="fechaPago"  value="YYYY-mm-dd" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="fechaPago"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Total Impuestos</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="totalGravemenes"  value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="totalGravemenes"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Monto Factura</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="montoFactura"  value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="montoFactura"/>
                                                                    </td>
                                                                </tr> 

                                                                <tr>
                                                                    <td style="color: black">Tipo Certificado Servicio</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="tipoCertServ" maxlength="10" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="tipoCertServ"/>
                                                                    </td>
                                                                </tr> 

                                                                <tr>
                                                                    <td style="color: black">Numero Certificado de Servicio</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="numeroCertServ" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="numeroCertServ"/>
                                                                    </td>
                                                                </tr> 

                                                                <tr>
                                                                    <td style="color: black">Fecha Certificado de Servicio</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="fechaCertServ"  value="YYYY-mm-dd" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="fechaCertServ"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">NIR</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="NIR" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="NIR"/>
                                                                    </td>
                                                                </tr> 

                                                                <tr>
                                                                    <td style="color: black">Numero Factura</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="numeroFactura" maxlength="20" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="numeroFactura"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Fecha Factura</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="fechaFactura"  value="YYYY-mm-dd" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="fechaFactura"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Ubicacion</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="ubicacion" maxlength="140" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="ubicacion"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Observaciones</td>
                                                                    <td>
                                                                        <html:text name="Compra" property="obs" maxlength="300" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="obs"/>
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                        <p style="text-align: center">
                                                            <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')">
                                                                Agregar Compra
                                                            </html:submit>
                                                            <html:reset value="Limpiar"/>
                                                        </p>

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

                <%@include file="/includes/Lsidebar.jsp" %>
                <%@include file="/includes/Rsidebar.jsp" %>

            </div>
            <%@include file="/includes/footer.jsp" %>
        </div>
    </body>
</html>