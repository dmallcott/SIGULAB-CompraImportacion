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
        <title><tiles:insert attribute="page_title"/></title>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/layout.css"/>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/forms.css"/>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/colors.css"/>
        <link rel="stylesheet" type="text/css" href="./Plantilla/static/css/style.css"/>
        <script type='text/javascript' src='./Plantilla/static/scripts/jquery-1.10.2.min.js'></script>
        <script type='text/javascript' src='./Plantilla/static/scripts/script.js'></script>
    </head>
    <body>

        <div>
            <tiles:insert attribute="banner"/>
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
                                        <h2 property="dc:title" datatype="" class="title node-title"><tiles:insert attribute="body_title"/></h2>
                                    </header>
                                    <div class="content clearfix">
                                        <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                            <div class="field-items">
                                                <div class="field-item even" property="content:encoded">
                                                    <tiles:insert attribute="body"/>
                                                 </div>
                                            </div>
                                        </div>  
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>                                                       
            <tiles:insert attribute="sidebarL"/>
            <tiles:insert attribute="sidebarR"/>
        </div>
        <tiles:insert attribute="footer"/> 
    </body>
</html:html>
