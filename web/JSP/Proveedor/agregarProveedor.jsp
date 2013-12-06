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
        <title>SIGULAB: Agregar Proveedor</title>
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
                                        <h2 property="dc:title" datatype="" class="title node-title">Agregar Proveedor</h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                            <div class="field-items">
                                                <div class="field-item even" property="content:encoded">
                                                    <logic:present name="noAgregado">
                                                        <br>
                                                        <p align ="center" style="background-color: firebrick; color: white;
                                                           width: 300px; margin-left: auto; margin-right: auto"> 
                                                            Proveedor no agregado.
                                                        </p>
                                                    </logic:present>

                                                    <html:form action="/agregarProveedor" method="POST" acceptCharset="ISO-8859-1" 
                                                               enctype="multipart/form-data" onsubmit="return(this)">
                                                        <table border="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="color: black">RIF</td>
                                                                    <td>
                                                                        <html:text name="Proveedor" property="RIF" maxlength="12" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>

                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors  property="RIF"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Nombre</td>
                                                                    <td>
                                                                        <html:text name="Proveedor" property="compania" maxlength="50" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="compania"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Telefono</td>
                                                                    <td>
                                                                        <html:text name="Proveedor" property="telefono" maxlength="50" value="" errorStyleClass="error"
                                                                                   errorKey="org.apache.struts.action.ERROR"></html:text>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors  property="telefono"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td style="color: black">Resena</td>
                                                                    <td>
                                                                        <html:textarea name="Proveedor" property="resena" value="" errorStyleClass="error"
                                                                                       errorKey="org.apache.struts.action.ERROR"></html:textarea>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="resena"/>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td colspan="2" style="color:firebrick">
                                                                        <html:errors property="registro"/>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <p style="text-align: center">
                                                            <html:submit onclick="javascript: return confirm('¿Esta seguro de que los datos son correctos?')">
                                                                Agregar Proveedor
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