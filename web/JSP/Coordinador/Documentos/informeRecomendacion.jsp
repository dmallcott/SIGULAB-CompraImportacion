<%-- 
    Document   : InformeRecomendacion
    Created on : Jan 8, 2014, 7:17:27 PM
    Author     : Daniela Rodriguez
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:form action="/agregarInformeRecomendacion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <table border="0">
        <tbody id="tabla">
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
                <td style="color: black">Mes de Firma</td>
                <td><html:text property="mesFinal" maxlength="2" value="mm" errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text></td>
            </tr>
            <tr>
                <td colspan="2" style="color:firebrick"><html:errors property="mesFinal"/></td>
            </tr>
            
        <script>
            var numeroItems = 0;
                while (numeroItems == 0 || numeroItems > 6 || numeroItems === null) {
                    numeroItems = prompt("Cuantos items tendra esta solicitud?");
                }
                var table = document.getElementById("tabla");
                var rowCount;
                var row;
                var cell1;
                var cell2;
                var cell3;
                for (var x = 0; x < numeroItems; x++) {
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    
                    cell1 = row.insertCell(0);
                    cell1.innerHTML = '<b>Opcion ' + (x+1)+'</b>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = 'Empresa';
                    cell2.innerHTML = '<input required type="text" maxlength="50" name="empresa'+x+'"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = 'Items';
                    cell2.innerHTML = '<input required type="text" maxlength="100" name="items'+x+'"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Calidad del Producto</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion1'+x+'" value="True"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Disponibilidad del Producto</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion2'+x+'" value="True"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Proveedor Unico</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion3'+x+'" value="True"/>';
  
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Calidad del Servicio</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion4'+x+'" value="True"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Garantia</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion5'+x+'" value="True"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Servicio Postventa</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion6'+x+'" value="True"/>';

                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Cumplimiento de las Especificaciones</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion7'+x+'" value="True"/>';

                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Precio</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion8'+x+'" value="True"/>';
                    
                    rowCount = table.rows.length;
                    row = table.insertRow(rowCount);
                    cell1 = row.insertCell(0);
                    cell2 = row.insertCell(1);
                    cell1.innerHTML = '<td style="color: black">Tiempo de Entrega</td>';
                    cell2.innerHTML = '<input type="checkbox" name="opcion9'+x+'" value="True"/>';
                
                }
        </script>
        </tbody>
    </table>
    <p style="text-align: center">
        <html:submit onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset value="Limpiar"/>
    </p>
</html:form>