/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.sql.Date;

/**
 *
 * @author daniel
 */
public class CartaInvitacion {
    private String codigo; // todos los docs tienen codigo? podrias hacer una interfaz con eso
    private Date Fecha;
    private String nomEmpresa;
    private String direccion;
    private String presente;
    private String telefono;
    private String correo;
    private String diaOferta;
    private String mesOferta;
    private String contacto;
    private String responsable;
    private String unidadSolicitante;

    
    public static void main(String[] args) throws IOException, InterruptedException{
        CartaInvitacion test = new CartaInvitacion();
        test.setCodigo("1");    
        test.setFecha(Date.valueOf("2013-12-26"));
        test.setNomEmpresa("DT Systems");
        test.setDireccion("Caracas");
        test.setPresente("Daniel Mallcott");
        test.setTelefono("0212-1234567");
        test.setCorreo("dmallcott@usb.ve");
        test.setDiaOferta("05");
        test.setMesOferta("Marzo");
        test.setContacto("Daniel");
        test.setResponsable("Daniel Mallcott");
        test.setUnidadSolicitante("ULAB");
        
        boolean result = test.generateDoc();
        
    }
    
    public boolean generateDoc() throws IOException, InterruptedException {
        Process terminal;
        
        String[] command = {"./src/bash/genCartaInvitacion.sh", codigo, Fecha.toString(), nomEmpresa, direccion, 
            presente, telefono, correo, diaOferta, mesOferta, contacto, responsable, unidadSolicitante};
        
        terminal = Runtime.getRuntime().exec(command);
        terminal.waitFor();
        return true;
    }
    
    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public String getNomEmpresa() {
        return nomEmpresa;
    }

    public void setNomEmpresa(String nomEmpresa) {
        this.nomEmpresa = nomEmpresa;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getPresente() {
        return presente;
    }

    public void setPresente(String presente) {
        this.presente = presente;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDiaOferta() {
        return diaOferta;
    }

    public void setDiaOferta(String diaOferta) {
        this.diaOferta = diaOferta;
    }

    public String getMesOferta() {
        return mesOferta;
    }

    public void setMesOferta(String mesOferta) {
        this.mesOferta = mesOferta;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getUnidadSolicitante() {
        return unidadSolicitante;
    }

    public void setUnidadSolicitante(String unidadSolicitante) {
        this.unidadSolicitante = unidadSolicitante;
    }
    
    
}
