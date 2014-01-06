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
        <title>SIGULAB: Editar Resena</title>
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
                                        <h2 property="dc:title" datatype="" class="title node-title">Editar Resena</h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                            <div class="field-items">
                                                <div class="field-item even" property="content:encoded">
                                                    <logic:present name="noEditado">
                                                        <br>
                                                        <p align ="center" style="background-color: firebrick;
                                                           width: 300px; margin-left: auto; margin-right: auto; color: white"> 
                                                            Resena no pudo ser editada.
                                                        </p>
                                                    </logic:present>

                                                    <html:form action="/editarResena" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
                                                        <table border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td>Resena previa</td>
                                                                    <td>
                                                                        <bean:write name="Proveedor" property="resena"></bean:write>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="color: black">Resena actualizada</td>
                                                                        <td>
                                                                        <html:hidden name="Proveedor" property="RIF"/>
                                                                        <html:textarea name="Proveedor" property="resena" errorStyleClass="error" value=""
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:textarea>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="resena"/>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <p style="text-align: center">
                                                            <html:submit>
                                                                Editar
                                                            </html:submit>
                                                            <html:reset>Limpiar</html:reset>
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