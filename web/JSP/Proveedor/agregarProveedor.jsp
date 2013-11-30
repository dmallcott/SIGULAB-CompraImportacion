<%-- 
    Document   : agregarProveedor
    Created on : Nov 28, 2013, 12:03:25 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="clearForms()" onunload="clearForms()">
        <script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
        
        <h4>Registro de Proveedores</h4>

        <html:form action="/agregarProveedor" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
            <table border="0">
                <tbody>
                    <tr>
                        <td style="color: black">RIF</td>
                        <td>
                            <html:text name="Proveedor" property="RIF" maxlength="10" value="" errorStyleClass="error"
                                       errorKey="org.apache.struts.action.ERROR"></html:text>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="color:firebrick">
                            <html:errors property="RIF"/>
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
                            <html:text name="Proveedor" property="telefon" maxlength="50" value="" errorStyleClass="error"
                                       errorKey="org.apache.struts.action.ERROR"></html:text>
                            </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="color:firebrick">
                        <html:errors property="telefono"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="color: black">Resena</td>
                        <td>
                            <html:text name="Proveedor" property="resena" maxlength="50" value="" errorStyleClass="error"
                                       errorKey="org.apache.struts.action.ERROR"></html:text>
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
                <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')">
                    Agregar Proveedor
                </html:submit>
                <html:reset value="Limpiar"/>
            </p>

        </html:form>
    </body>
</html>
