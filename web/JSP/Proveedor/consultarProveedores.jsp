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
        <title>SIGULAB: Consulta Proveedores</title>
        <link rel="stylesheet" type="text/css" href="./includes/css/layout.css"/>
        <link rel="stylesheet" type="text/css" href="./includes/css/forms.css"/>
        <link rel="stylesheet" type="text/css" href="./includes/css/colors.css"/>
        <link rel="stylesheet" type="text/css" href="./includes/css/style.css"/>
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
                                        <h2 property="dc:title" datatype="" class="title node-title">Consulta de Proveedores</h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                            <div class="field-items">
                                                <div class="field-item even" property="content:encoded">
                                                    <logic:present name="eliminado">
                                                        <br>
                                                        <p align ="center" style="background-color: springgreen;
                                                           width: 300px; margin-left: auto; margin-right: auto"> 
                                                            Proveedor eliminado exitosamente.
                                                        </p>
                                                    </logic:present>
                                                    <logic:present name="noEliminado">
                                                        <br>
                                                        <p align ="center" style="background-color: firebrick;
                                                           width: 300px; margin-left: auto; margin-right: auto; color: white"> 
                                                            Proveedor no pudo ser eliminado.
                                                        </p>
                                                    </logic:present>
                                                    <logic:present name="editado">
                                                        <br>
                                                        <p align ="center" style="background-color: springgreen;
                                                           width: 300px; margin-left: auto; margin-right: auto"> 
                                                            Resena editada exitosamente.
                                                        </p>
                                                    </logic:present>
                                                    <logic:present name="noConsulta">
                                                        <br>
                                                        <p align ="center" style="background-color: firebrick;
                                                           width: 300px; margin-left: auto; margin-right: auto; color: white"> 
                                                            No pudo realizarse la consulta.
                                                        </p>
                                                    </logic:present>  


                                                    <div id="consultProveedor">
                                                        <table border="0">
                                                            <thead style="">
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
                                                                RIF
                                                            </th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
                                                                Compania
                                                            </th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
                                                                Telefono
                                                            </th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
                                                                Resena
                                                            </th> 
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
                                                                Editar
                                                            </th>
                                                            <th style="color: white; font-weight: bold;background: #1c6ea0; border: 2px solid white;">
                                                                Eliminar
                                                            </th>
                                                            </thead>
                                                            <logic:iterate name="proveedores" id="Proveedores">
                                                                <tr>
                                                                    <td>
                                                                        <p style="width:80px"><bean:write name="Proveedores" property="RIF"></bean:write></p>
                                                                        </td>
                                                                        <td>
                                                                        <bean:write name="Proveedores" property="compania"></bean:write>
                                                                        </td>
                                                                        <td>
                                                                            <p style="width:80px"><bean:write name="Proveedores" property="telefono"></bean:write></p>
                                                                        </td>
                                                                        <td>
                                                                            <p style="width:145px; overflow: auto;"><bean:write name="Proveedores" property="resena"></bean:write></p>
                                                                        </td>
                                                                        <td>
                                                                        <html:form action="/reqEditarResena" onsubmit="return(this)">
                                                                            <html:hidden name="Proveedores" property="RIF"/>
                                                                            <html:hidden name="Proveedores" property="resena"/>

                                                                            <html:submit>
                                                                                Editar Resena
                                                                            </html:submit>
                                                                        </html:form>
                                                                    </td>
                                                                    <td>
                                                                        <html:form action="/eliminarProveedor" onsubmit="return(this)">
                                                                            <html:hidden name="Proveedores" property="RIF"/>
                                                                            <html:submit>
                                                                                Eliminar
                                                                            </html:submit>
                                                                        </html:form>
                                                                    </td>
                                                                </tr>
                                                            </logic:iterate> 
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