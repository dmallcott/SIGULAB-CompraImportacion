/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author patrick
 */
public class SolicitudServicio extends org.apache.struts.action.ActionForm{
    
    // Informacion del documento
    private String codigo;
    private String compania;
    private String contacto;
    private String contactoCompania;
    private String correo;
    private String de;
    private String descripcion;
    private String enunciado;
    private String fecha;
    private String fechaCotizacion;
    private String monto;
    private String nombreBien;
    private String noBienNacional;
    private String noCotizacion;
    private String observaciones;
    private String proyectoPOA;
    private String telefono;
    private String telefonoCompania;
    private String ubicacion;
    
    // Variables para uso del sistema
    private String genPath;
    private Pattern patron;
    private Matcher match;
    private static final String patronTelefono = "^0212-[0-9]{7}$";
    private static final String patronCorreo = "^[a-z]*@usb\\.ve$";
    
    public boolean validateTelefono(final String telefono) {
        patron = Pattern.compile(patronTelefono);
        match = patron.matcher(telefono);
        return match.matches();
    }
    
    public boolean validateTelefonoCompania(final String telefonoCompania) {
        patron = Pattern.compile(patronTelefono);
        match = patron.matcher(telefonoCompania);
        return match.matches();
    }    
    
    public boolean validateCorreo(final String email) {
        patron = Pattern.compile(patronCorreo);
        match = patron.matcher(email);
        return match.matches();
    }

    public boolean validateFecha(String fecha) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            sdf.parse(fecha);
            return true;
        } catch (ParseException ex) {
            return false;
        }
    }
    
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if (!validateFecha(fecha)) {
            errors.add("fecha", new ActionMessage("error.fecha.invalida"));
        }

        if (!validateFecha(fechaCotizacion)) {
            errors.add("fechaCotizacion", new ActionMessage("error.fecha.invalida"));
        }
        
        if (!validateTelefono(telefono)) {
            errors.add("telefono", new ActionMessage("error.telefono.invalido"));
        }
        
        if (!validateTelefonoCompania(telefono)) {
            errors.add("telefonoCompania", new ActionMessage("error.telefono.invalido"));
        }        
        
        if (!validateCorreo(correo)) {
            errors.add("correo", new ActionMessage("error.correo.invalido"));
        }
        
        if (compania.matches("\\w") || compania.equals(""))
            errors.add("compania", new ActionMessage("error.campo.vacio"));

        if (nombreBien.matches("\\w") || compania.equals(""))
            errors.add("nombreBien", new ActionMessage("error.campo.vacio"));        
        
        if (contacto.matches("\\w") || contacto.equals(""))
            errors.add("contacto", new ActionMessage("error.campo.vacio"));
        
        if (contactoCompania.matches("\\w") || contactoCompania.equals(""))
            errors.add("contactoCompania", new ActionMessage("error.campo.vacio"));        
        
        if (monto.equals("\\w") || monto.equals(""))
            errors.add("monto", new ActionMessage("error.campo.vacio"));   
        
        return errors;
    }
    
    
    public String getCodigo() {
        return codigo;
    }

    public String getCompania() {
        return compania;
    }

    public String getContacto() {
        return contacto;
    }

    public String getContactoCompania() {
        return contactoCompania;
    }

    public String getCorreo() {
        return correo;
    }

    public String getDe() {
        return de;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getEnunciado() {
        return enunciado;
    }

    public String getFecha() {
        return fecha;
    }

    public String getFechaCotizacion() {
        return fechaCotizacion;
    }

    public String getMonto() {
        return monto;
    }

    public String getNombreBien() {
        return nombreBien;
    }

    public String getNoBienNacional() {
        return noBienNacional;
    }

    public String getNoCotizacion() {
        return noCotizacion;
    }

    public String getProyectoPOA() {
        return proyectoPOA;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getTelefonoCompania() {
        return telefonoCompania;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public String getGenPath() {
        return genPath;
    }

    public Pattern getPatron() {
        return patron;
    }

    public Matcher getMatch() {
        return match;
    }

    public static String getPatronTelefono() {
        return patronTelefono;
    }

    public static String getPatronCorreo() {
        return patronCorreo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public void setCompania(String compania) {
        this.compania = compania;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public void setContactoCompania(String contactoCompania) {
        this.contactoCompania = contactoCompania;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setDe(String de) {
        this.de = de;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setEnunciado(String enunciado) {
        this.enunciado = enunciado;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setFechaCotizacion(String fechaCotizacion) {
        this.fechaCotizacion = fechaCotizacion;
    }

    public void setMonto(String monto) {
        this.monto = monto;
    }

    public void setNombreBien(String nombreBien) {
        this.nombreBien = nombreBien;
    }

    public void setNoBienNacional(String noBienNacional) {
        this.noBienNacional = noBienNacional;
    }

    public void setNoCotizacion(String noCotizaciones) {
        this.noCotizacion = noCotizaciones;
    }

    public void setProyectoPOA(String proyectoPOA) {
        this.proyectoPOA = proyectoPOA;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setTelefonoCompania(String telefonoCompania) {
        this.telefonoCompania = telefonoCompania;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }

    public void setPatron(Pattern patron) {
        this.patron = patron;
    }

    public void setMatch(Matcher match) {
        this.match = match;
    }
    
    
}
