<%-- 
    Document   : especificacionTecnica
    Created on : Jan 8, 2014, 5:52:04 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

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
                <script>
                var numeroItems = 0;
                while (numeroItems == 0 || numeroItems > 15 || numeroItems === null) {
                    numeroItems = prompt("Cuantos items tendra esta solicitud?");
                }
                var table = document.getElementById("tabla");
                var rowCount = table.rows.length;
                for (var x = 0; x < numeroItems; x++) {
                    var row = table.insertRow(rowCount+x);
                    var cell1 = row.insertCell(0);
                    var cell2 = row.insertCell(1);
                    var cell3 = row.insertCell(2);
                    cell1.innerHTML = "Item " + (x+1);
                    cell2.innerHTML = '<input type="text" name="caracteristica'+x+'"/>';
                    cell3.innerHTML = '<input type="text" name="cantidad'+x+'"/>';
                }
            </script> 
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