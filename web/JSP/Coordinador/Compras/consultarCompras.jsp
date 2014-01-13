<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<div width="100%" style="overflow-x: scroll;">
<table border="1" style=" text-align: center;">
    <thead>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Orden de Compra/Servicio</th> 
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Status</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Tipo</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Partida Presupuestaria</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Recepción de Certificación Presupuestaria</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Tipo de Pago</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Pago</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Pago</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Total de Gravemenes</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Monto de Factura</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Tipo de Certificación de Servicio</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Numero de Certificación de Servicio</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Certificación de Servicio</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Informe de Recepción</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Número de Factura</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Fecha de Factura</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Ubicación</th>
    <th style="color: white; font-weight: bold;background: #1c6ea0; border: 1px solid white;">Observaciones</th>             
</thead>
<tbody >

    <logic:iterate name="compras" id="Compras">
        <tr>
            <td>
                <bean:write name="Compras" property="numOrden"></bean:write>
                </td>                        
                <td>
                <bean:write name="Compras" property="status"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="tipo"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="fechaPartPresu"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="fechaRecepCertPresu"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="tipoPago"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="numeroPago"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="fechaPago"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="totalGravemenes"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="montoFactura"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="tipoCertServ"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="numeroCertServ"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="fechaCertServ"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="NIR"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="numeroFactura"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="fechaFactura"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="ubicacion"></bean:write>
                </td>
                <td>
                <bean:write name="Compras" property="obs"></bean:write>
                </td>

            </tr>
    </logic:iterate> 
</tbody>

</table>
</div>