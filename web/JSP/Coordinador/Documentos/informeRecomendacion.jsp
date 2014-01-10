<%-- 
    Document   : InformeRecomendacion
    Created on : Jan 8, 2014, 7:17:27 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:form action="/agregarInformeRecomendacion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <tr>
                <td style="color: black">Responsable 1</td>
                <td><html:text property="responsable1" maxlength="30" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="responsable1"/></td>
            </tr>
            <tr>
                <td style="color: black">Cargo 1</td>
                <td><html:text property="cargo1" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="cargo1"/></td>
            </tr>
            <tr>
                <td style="color: black">Proveedores</td>
                <td><html:text property="listaProveedores1" maxlength="200" value="proveedor1,proveedor2" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="listaProveedores1"/></td>
            </tr>
            <tr>
                <td style="color: black">Responsable 2</td>
                <td><html:text property="responsable2" maxlength="30" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="responsable2"/></td>
            </tr>
            <tr>
                <td style="color: black">Cargo 2</td>
                <td><html:text property="cargo2" maxlength="50" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="cargo2"/></td>
            </tr>
            <tr>
                <td style="color: black">Proveedores</td>
                <td><html:text property="listaProveedores2" maxlength="200" value="proveedor1,proveedor2" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="listaProveedores2"/></td>
            </tr>
            <tr>
                <td style="color: black">Dia Remision</td>
                <td><html:text property="diaRevision" maxlength="2" value="dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="diaRevision"/></td>
            </tr>
            <tr>
                <td style="color: black">Mes Remision</td>
                <td><html:text property="mesRevision" maxlength="2" value="mm" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="mesRevision"/></td>
            </tr>        
            <tr>
                <td style="color: black">Dia Evaluacion</td>
                <td><html:text property="diaEvaluacion" maxlength="2" value="dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="diaEvaluacion"/></td>
            </tr>
            <tr>
                <td style="color: black">Mes Evaluacion</td>
                <td><html:text property="mesEvaluacion" maxlength="2" value="mm" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="mesEvaluacion"/></td>
            </tr>
            <tr>
                <td style="color: black">Dia de Firma</td>
                <td><html:text property="diaFinal" maxlength="2" value="dd" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="diaFinal"/></td>
            </tr>
            <tr>
                <td style="color: black">Mes Final</td>
                <td><html:text property="mesFinal" maxlength="2" value="mm" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="mesFinal"/></td>
            </tr>
            <tr>
                <td style="color: black">Calidad del Producto</td>
                <td><html:checkbox property="opcion1" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion1" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Disponibilidad del Producto</td>
                <td><html:checkbox property="opcion2" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion2" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Proveedor Unico</td>
                <td><html:checkbox property="opcion3" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion3" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Calidad del Servicio</td>
                <td><html:checkbox property="opcion4" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion4" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Garantia</td>
                <td><html:checkbox property="opcion5" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion5" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Servicio Postventa</td>
                <td><html:checkbox property="opcion6" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion6" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Cumplimiento de las Especificaciones</td>
                <td><html:checkbox property="opcion7" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion7" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Precio</td>
                <td><html:checkbox property="opcion8" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion8" value="False" ></html:hidden></td>
            </tr>
            <tr>
                <td style="color: black">Tiempo de Entrega</td>
                <td><html:checkbox property="opcion9" value="True" ></html:checkbox></td>
                <td><html:hidden property="opcion9" value="False" ></html:hidden></td>
            </tr>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>