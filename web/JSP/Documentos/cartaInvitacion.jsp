<%-- 
    Document   : template
    Created on : Nov 30, 2013, 3:54:35 PM
    Author     : Gustav
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
    $(function() {
        //Array para dar formato en español
        $.datepicker.regional['es'] =
                {
                    closeText: 'Cerrar',
                    prevText: 'Previo',
                    nextText: 'Próximo',
                    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                        'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                    monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
                        'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                    monthStatus: 'Ver otro mes', yearStatus: 'Ver otro año',
                    dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                    dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sáb'],
                    dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
                    dateFormat: 'dd/mm/yy', firstDay: 0,
                    initStatus: 'Selecciona la fecha', isRTL: false};
        $.datepicker.setDefaults($.datepicker.regional['es']);
        //miDate: fecha de comienzo D=días | M=mes | Y=año
        //maxDate: fecha tope D=días | M=mes | Y=año
        $("#datepicker").datepicker({minDate: "-1D", maxDate: "+1M +10D", dateFormat: "yy-MM-dd"});
    });
</script>

<link rel="stylesheet" href="/resources/demos/style.css">

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

<html:form action="/agregarCartaInvitacion" method="POST" acceptCharset="ISO-8859-1" enctype="multipart/form-data" onsubmit="return(this)">
    <div class="form-group">
        <label for="resena">Nombre de la Empresa</label>
        <html:errors  property="nomEmpresa"/>
        <html:text property="nomEmpresa" value="${CartaInvitacion.nomEmpresa}"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>

        <div class="form-group">
            <label for="resena">Dirección de la Empresa</label>
        <html:errors  property="direccion"/>
        <html:text property="direccion" value="${CartaInvitacion.direccion}"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>

        <div class="form-group">
            <label for="resena">Número de fax</label>
        <html:errors property="telefono"/>
        <html:text property="telefono" maxlength="12" value="${CartaInvitacion.telefono}"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>             

        <div class="form-group">
            <label for="correo">Correo Electrónico</label>
        <html:errors  property="correo"/>
        <html:text property="correo" value="${CartaInvitacion.correo}"
                   errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>

        <div class="form-group">
            <label for="resena">Información de Contacto </label>
        <html:errors  property="contacto"/>
        <html:text property="contacto" maxlength="50" 
                   value="${CartaInvitacion.contacto}" errorKey="org.apache.struts.action.ERROR" styleClass="form-control"></html:text>
        </div>

        <div class="form-group">
            <label for="resena">Fecha final de la oferta</label>
        <html:errors property="fechaOferta"/>
        <html:text styleId="datepicker" styleClass="form-control" property="fechaOferta" 
                   errorStyleClass="error" errorKey="org.apache.struts.action.ERROR"></html:text>
        </div>
        <p style="text-align: center">
        <html:submit styleClass="btn btn-primary"></html:submit>
        <html:reset styleClass="btn btn-default" value="Limpiar"/>
    </p>
</html:form>