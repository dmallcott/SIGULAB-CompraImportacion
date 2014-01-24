<%-- 
    Document   : notaDevolucion
    Created on : Jan 9, 2014, 7:39:57 PM
    Author     : patrick
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<logic:present name="noAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Documento no agregado.
    </p>
</logic:present>
<logic:present name="yaAgregado">
    <br>
    <p align ="center" style="background-color: firebrick; color: white;
       width: 300px; margin-left: auto; margin-right: auto"> 
        Documento ya existe.
    </p>
</logic:present>


<html:form action="/agregarNotaDevolucion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">

            
        <div class="form-group">
            <label for="requisicion">Requisición</label>
            <html:checkbox property="requisicion" value="True" ></html:checkbox>
            <html:hidden property="requisicion" value="False" ></html:hidden>
        </div> 
        
        <div class="form-group">
            <label for="rqNO">Número Req.</label>
            <html:errors  property="rqNO"/>
            <html:text property="rqNO" value="" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div> 
            
        <div class="form-group">
            <label for="pago">Autorización de Pago</label>
            <html:checkbox property="pago" value="True" ></html:checkbox>
            <html:hidden property="pago" value="False" ></html:hidden>
        </div>  
        
        <div class="form-group">
            <label for="pNO">Número Pago.</label>
            <html:errors  property="pNO"/>
            <html:text property="pNO" value="" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>        

        <div class="form-group">
            <label for="certificacionServicio">Certificación de Servicio</label>
            <html:checkbox property="certificacionServicio" value="True" ></html:checkbox>
            <html:hidden property="certificacionServicio" value="False" ></html:hidden>
        </div> 
        
        <div class="form-group">
            <label for="csNO">Número Certificación.</label>
            <html:errors  property="csNO"/>
            <html:text property="csNO" value="" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>         
            
        <div class="form-group">
            <label for="solicitudServicio">Solicitud de Servicio</label>
            <html:checkbox property="solicitudServicio" value="True" ></html:checkbox>
            <html:hidden property="solicitudServicio" value="False" ></html:hidden>
        </div> 
        
        <div class="form-group">
            <label for="ssNO">Número Solicitud.</label>
            <html:errors  property="ssNO"/>
            <html:text property="ssNO" value="" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>         

        <div class="form-group">
            <label for="recepcion">Informe de Recepción</label>
            <html:checkbox property="recepcion" value="True" ></html:checkbox>
            <html:hidden property="recepcion" value="False" ></html:hidden>
        </div>  
        
        <div class="form-group">
            <label for="rpNO">Número Recepción.</label>
            <html:errors  property="rpNO"/>
            <html:text property="rpNO" value="" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div> 
            
        <div class="form-group">
            <label for="otro">Otro</label>
            <html:checkbox property="otro" value="True" ></html:checkbox>
            <html:hidden property="otro" value="False" ></html:hidden>
        </div>
        
        <div class="form-group">
            <label for="otro1">Descripción.</label>
            <html:errors  property="otro1"/>
            <html:text property="otro1" value="" maxlength="10"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>  
            
        <div class="form-group">
            <label for="oNO">Número.</label>
            <html:errors  property="oNO"/>
            <html:text property="oNO" value="" maxlength="12"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>             

<!--                <h3>Causa de la Devolucion</h3>-->
         
            <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading"><h5>Causa de la Devolución</h5></div>

            <!-- Table -->
            <table class="table">
                <tbody>
                <thead>
                    <tr>
                        <td></td>
                        <td style="text-align: right">
                          <div class="form-group">
                           <label for="c5">Carencia de Información Indispensable del Proveedor del Bien o Servicio</label>
                           <html:checkbox property="c5" value="True" ></html:checkbox>
                           <html:hidden property="c5" value="False" ></html:hidden>
            </div>        
                            
                        </td>
                    </tr>
                </thead>
                    <tr>
                        <td>
                          <div class="form-group">
                          <label for="c1">Disponibilidad Presupuestaria Insuficiente</label>
                          <html:checkbox property="c1" value="True" ></html:checkbox>
                          <html:hidden property="c1" value="False" ></html:hidden>
                          </div> 
                        </td>
                        <td style="text-align: center">
                            <div class="form-group">
                        <label for="c5nombre">Nombre</label>
                        <html:checkbox property="c5nombre" value="True" ></html:checkbox>
                        <html:hidden property="c5nombre" value="False" ></html:hidden>
                         </div>                                          
                        </td>       
                    </tr>    
                    <tr>
                        <td>
                           <div class="form-group">
                            <label for="c2">Registro en Idioma Distinto al Español</label>
                            <html:checkbox property="c2" value="True" ></html:checkbox>
                            <html:hidden property="c2" value="False" ></html:hidden>
                           </div>             
                        </td>
                        
                        <td style="text-align: center">
                           <div class="form-group">
                            <label for="c5rif">RIF</label>
                            <html:checkbox property="c5rif" value="True" ></html:checkbox>
                            <html:hidden property="c5rif" value="False" ></html:hidden>
                           </div>                  
                            
                        </td>        
                    </tr>
                    
                    <tr>
                        <td>
                          <div class="form-group">
                           <label for="c3">Registro no Discriminado por Items</label>
                           <html:checkbox property="c3" value="True" ></html:checkbox>
                           <html:hidden property="c3" value="False" ></html:hidden>
                         </div>                    
                        </td>
                        
                        <td style="text-align: center">
                         <div class="form-group">
                            <label for="c5fiscal">Dirección Fiscal</label>
                            <html:checkbox property="c5fiscal" value="True" ></html:checkbox>
                            <html:hidden property="c5fiscal" value="False" ></html:hidden>
                         </div>                
                        </td>                   
                    </tr>
                    
                    <tr>
                        <td>
                         <div class="form-group">
                        <label for="c4">Registro sin la Firma y/o Sello de la Unidad Responsable</label>
                        <html:checkbox property="c4" value="True" ></html:checkbox>
                        <html:hidden property="c4" value="False" ></html:hidden>
                        </div>                       
                        </td>
                        
                        <td style="text-align: center">
                        <div class="form-group">
                        <label for="c5tlf">Teléfonos</label>
                          <html:checkbox property="c5tlf" value="True" ></html:checkbox>
                          <html:hidden property="c5tlf" value="False" ></html:hidden>
                         </div>                
                            
                        </td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center">
                            <div class="form-group">
                            <label for="c5banco">Datos Bancarios</label>
                            <html:checkbox property="c5banco" value="True" ></html:checkbox>
                            <html:hidden property="c5banco" value="False" ></html:hidden>
                            </div>     
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center">
                          <div class="form-group">
                           <label for="c5contacto">Persona Contacto</label>
                           <html:checkbox property="c5contacto" value="True" ></html:checkbox>
                           <html:hidden property="c5contacto" value="False" ></html:hidden>
                          </div>             
                        </td>           
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center">
                         <div class="form-group">
                         <label for="c5otro">Otro</label>
                         <html:checkbox property="c5otro" value="True" ></html:checkbox>
                         <html:hidden property="c5otro" value="False" ></html:hidden>
                         </div>                 
                            
                        </td>
                    </tr>
                    

                        
                </tbody>
            </table>
            </div>

                            
             <div class="panel panel-default">
                <div class="panel-heading">
                <h5 class="panel-title">Carencia de Documentos:</h5>
                </div>
                <div class="panel-body">
                 
             <div class="form-group">
                <label for="c6">Contrato Fonacit, si Aplica</label>
                <html:checkbox property="c6" value="True" ></html:checkbox>
                <html:hidden property="c6" value="False" ></html:hidden>
            </div> 
    
            <div class="form-group">
                <label for="c7">Copia del Acta del Consejo Directivo que Autorice la Contratación
                Pública (Compras mayores de 2.500 UT), si es aplicable</label>
                <html:checkbox property="c7" value="True" ></html:checkbox>
                <html:hidden property="c7" value="False" ></html:hidden>
            </div>   
            
            <div class="form-group">
                <label for="c8">Factura, Proforma, o Cotización a nombre de la USB, Indicando
                la Condición de la Entrega.</label>
                <html:checkbox property="c8" value="True" ></html:checkbox>
                <html:hidden property="c8" value="False" ></html:hidden>
            </div>
            
            <div class="form-group">
                <label for="c9">Foto Referencial del Material y/o Equipo Solicitado</label>
                <html:checkbox property="c9" value="True" ></html:checkbox>
                <html:hidden property="c9" value="False" ></html:hidden>
            </div>            
                    
                </div>
            </div>                      
            
        <div class="form-group">
            <label for="observaciones">Observaciones</label>
            <html:errors  property="observaciones"/>
            <html:text property="observaciones" value="" maxlength="300"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div> 
            
            <tr>
                <td style="color: black">Fecha</td>
                <td><html:text property="fecha" maxlength="10" value="yyyy-mm-dd" onclick="this.value = ''" ></html:text></td>
            </tr>          
    <p style="text-align: center">
        <html:submit styleClass="btn btn-primary" onclick="javascript: return confirm('¿Está seguro de que los datos son correctos?')"></html:submit>
        <html:reset styleClass="btn btn-default" value="Limpiar"/>
    </p>
</html:form>
