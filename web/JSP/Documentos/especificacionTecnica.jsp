<%-- 
    Document   : especificacionTecnica
    Created on : Jan 8, 2014, 5:52:04 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<script>
    
    var numeroItems = 1;
    
    function agregarItem() {
        var table = document.getElementById("tabla");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        cell1.innerHTML = "Item " + (numeroItems+1);
        cell2.innerHTML = '<input required type="text" maxlength="200" name="caracteristica'+numeroItems+'"/>';
        cell3.innerHTML = '<input required type="text" pattern="[0-9]*" title="Utilize numeros positivos y enteros." name="cantidad'+numeroItems+'"/>';
        numeroItems++;
    }
</script> 

<html:form action="/agregarEspecificacionTecnica"
                   method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody>
            <table border="0" >
            <thead>
                <th>Item </th>
                <th>Caracteristica</th>
                <th>Cantidad</th>
            </thead>
            <tbody id="tabla" style="overflow: scroll">
                <tr>
                    <td>Item 1</td>
                    <td><input required type="text" maxlength="200" name="caracteristica0"/></td>
                    <td><input required type="text" pattern="[0-9]*" title="Utilize numeros positivos y enteros." name="cantidad0"/></td>
                </tr>
                
                
                <button onclick="agregarItem()">Agregar Item</button>
            </tbody>
        </table>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
        <%--<html:button property="/" value="Agregar otro item"></html:button>--%>
    </p>
</html:form>