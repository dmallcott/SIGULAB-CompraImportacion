<%-- 
    Document   : plantilla
    Created on : Dec 30, 2013, 7:13:09 PM
    Author     : daniel
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><tiles:insert attribute="page_title"/></title>
        <link rel="shortcut icon" href="http://www.ulab.usb.ve/misc/favicon.ico" type="image/vnd.microsoft.icon">
        <link href="Plantilla/static/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <script src="Plantilla/static/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Plantilla/static/bootstrap/dest/respond.src.js" type="text/javascript"></script>
        <script src="Plantilla/static/js/jquery.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function(){
                $("ul#subnavegador").hide();
                $("li#desplegable").mouseleave(function(){
                    $(this).find("ul#subnavegador").hide(400);
                });
                $("li#desplegable").mouseover(function(){
                    $(this).find("ul#subnavegador").show(400);
                });
            });
        </script>
        <style>
            .container-full {
                padding-left: 100px;   
                padding-right: 50px;  
                width: 1024px;
                height: 768px;
            }
            
            body {  
                width: 100%;
            }
            
            col-xs-6 {               
                width: 460px;
                padding-left: 0px;
                padding-right: 0px;
            }
        </style>
    </head>
    <body>
        <div class="container container-full ">
            <div class="row show-grid" style="height: 170px;">
                <div class="col-xs-12">
                    <tiles:insert attribute="banner"/>
                </div>
            </div>
            <div class="row show-grid">
                <div class="col-xs-2 " >
                    <tiles:insert attribute="sidebarL"/>
                </div>
                <div class="col-xs-8" >
                    <tiles:insert attribute="body"/>
                </div>
                <div class="col-xs-1 col-xs-push-1" >
                    <tiles:insert name="sidebarR"/>
                </div>
            </div>
            <div class="row show-grid" >
                <div class="col-xs-12">
                    <tiles:insert attribute="footer"/>
                </div>
            </div>
        </div>
    </body>
</html>
