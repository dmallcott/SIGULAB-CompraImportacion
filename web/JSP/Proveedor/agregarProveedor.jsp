<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<logic:present name="noAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor no agregado.
    </p>
</logic:present>
<logic:present name="yaAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Proveedor ya existe.
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