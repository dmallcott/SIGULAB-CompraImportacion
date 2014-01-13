<%-- 
    Document   : cotizacion
    Created on : Jan 9, 2014, 8:26:51 PM
    Author     : daniel
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>   

<script>
    function agregarItem() {
        var table = document.getElementById("tabla");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        cell1.innerHTML = "Item " + (rowCount + 1);
        cell2.innerHTML = '<input required type="text" maxlength="50" name="nombre' + rowCount + '"/>';
        cell3.innerHTML = '<input required type="text" placeholder="12,00" pattern="[0-9]*[\\.][0-9]*" title="Utilize decimales positivos." name="precio' + rowCount + '"/>';
        cell4.innerHTML = '<input required type="text" maxlength="20" name="tiempo' + rowCount + '"/>';
        cell5.innerHTML = '<input required type="text" maxlength="20" name="condicion' + rowCount + '"/>';
        cell6.innerHTML = '<input required type="text" maxlength="200" name="garantia' + rowCount + '"/>';
    }
</script> 

<logic:present name="noAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Cotizacion no agregada.
    </p>
</logic:present>

<html:form scriptLanguage="form" action="/agregarCotizacion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody style="overflow-x: scroll;">
            <tr>
                <td style="color: black">RIF</td>
                <td><html:text property="rif" maxlength="12" value="" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="rif"/></td>
            </tr>
            <tr>
                <td style="color: black">Nombre de la Empresa</td>
                <td><html:text property="nomEmpresa" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="nomEmpresa"/></td>
            </tr>
            <tr>
                <td style="color: black">Direccion de la Empresa</td>
                <td><html:text property="direccion" maxlength="150" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="direccion"/></td>
            </tr>
            <tr>
                <td style="color: black">Telefono</td>
                <td><html:text property="telefono" maxlength="12" value="0212-XXXXXXX" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="telefono"/></td>
            </tr>
            <tr>
                <td style="color: black">Fax</td>
                <td><html:text property="fax" maxlength="12" value="0212-XXXXXXX" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="fax"/></td>
            </tr>
            <tr>
                <td style="color: black">Correo</td>
                <td><html:text property="correo" maxlength="50" value="XXXX@usb.ve" onclick="this.value = ''" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="correo"/></td>
            </tr>
            <tr>
                <td style="color: black">Persona de Contacto</td>
                <td><html:text property="personaContacto" maxlength="50" value="" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
                </tr>
                <tr>
                    <td colspan="2" style="color:firebrick"><html:errors property="personaContacto"/></td>
            </tr>
        </tbody>
    </table>
    <div width="100%" style="overflow-x: scroll;">
        <table border="0" >
            <thead>
            <th><b>Item</b></th>
            <th><b>Nombre</b></th>
            <th><b>Precio</b></th>
            <th><b>Tiempo de Entrega</b></th>
            <th><b>Condicion de Pago</b></th>
            <th><b>Garantia</b></th>
            </thead>
            <tbody id="tabla" >
                <tr>
                    <td>Item 1</td>
                    <td><input required type="text" maxlength="50" name="nombre0"/></td>
                    <td><input required type="text" placeholder="12.00" pattern="[0-9]*[\\.][0-9]*" title="Utilize decimales positivos." name="precio0"/></td>
                    <td><input required type="text" placeholder="2 dias" maxlength="20" name="tiempo0"/></td>
                    <td><input required type="text" maxlength="20" name="condicion0"/></td>
                    <td><input required type="text" maxlength="200" name="garantia0"/></td>
                </tr>

            <button onclick="agregarItem()">Agregar Item</button>
            </tbody>
        </table>
    </div>

    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>