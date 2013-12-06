/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.sql.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author daniel
 */
public class Compra extends org.apache.struts.action.ActionForm {
    private static final String patronNumOrden = "[0-9]*";
    private int numOrden;
    private int status;
    private String tipo;
    private Date fechaPartPresu;
    private Date fechaRecepCertPresu;
    private String tipoPago;
    private int numeroPago;
    private Date fechaPago;
    private double totalGravemenes;
    private double montoFactura;
    private String tipoCertServ;
    private int numeroCertServ;
    private Date fechaCertServ;
    private int NIR;
    private String numeroFactura;
    private Date fechaFactura;
    private String ubicacion;
    private String obs;

    public int getNumOrden() {
        return numOrden;
    }

    public void setNumOrden(int numOrden) {
        this.numOrden = numOrden;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Date getFechaPartPresu() {
        return fechaPartPresu;
    }

    public void setFechaPartPresu(Date fechaPartPresu) {
        this.fechaPartPresu = fechaPartPresu;
    }

    public Date getFechaRecepCertPresu() {
        return fechaRecepCertPresu;
    }

    public void setFechaRecepCertPresu(Date fechaRecepCertPresu) {
        this.fechaRecepCertPresu = fechaRecepCertPresu;
    }

    public String getTipoPago() {
        return tipoPago;
    }

    public void setTipoPago(String tipoPago) {
        this.tipoPago = tipoPago;
    }

    public int getNumeroPago() {
        return numeroPago;
    }

    public void setNumeroPago(int numeroPago) {
        this.numeroPago = numeroPago;
    }

    public Date getFechaPago() {
        return fechaPago;
    }

    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public double getTotalGravemenes() {
        return totalGravemenes;
    }

    public void setTotalGravemenes(double totalGravemenes) {
        this.totalGravemenes = totalGravemenes;
    }

    public double getMontoFactura() {
        return montoFactura;
    }

    public void setMontoFactura(double montoFactura) {
        this.montoFactura = montoFactura;
    }

    public String getTipoCertServ() {
        return tipoCertServ;
    }

    public void setTipoCertServ(String tipoCertServ) {
        this.tipoCertServ = tipoCertServ;
    }

    public int getNumeroCertServ() {
        return numeroCertServ;
    }

    public void setNumeroCertServ(int numeroCertServ) {
        this.numeroCertServ = numeroCertServ;
    }

    public Date getFechaCertServ() {
        return fechaCertServ;
    }

    public void setFechaCertServ(Date fechaCertServ) {
        this.fechaCertServ = fechaCertServ;
    }

    public int getNIR() {
        return NIR;
    }

    public void setNIR(int NIR) {
        this.NIR = NIR;
    }

    public String getNumeroFactura() {
        return numeroFactura;
    }

    public void setNumeroFactura(String numeroFactura) {
        this.numeroFactura = numeroFactura;
    }

    public Date getFechaFactura() {
        return fechaFactura;
    }

    public void setFechaFactura(Date fechaFactura) {
        this.fechaFactura = fechaFactura;
    }
    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        if (this.getNumOrden() == 0) {
            errors.add("numOrden", new ActionMessage("error.numorden.malformulado"));
        }
        
        if (this.getFechaCertServ() == null) 
             errors.add("fechaCertServ", new ActionMessage("error.fecha.falta"));
        
        if (this.getFechaFactura() == null) 
             errors.add("fechaFactura", new ActionMessage("error.fecha.falta"));
        
        if (this.getFechaPago() == null) 
             errors.add("fechaPago", new ActionMessage("error.fecha.falta"));
        
        if (this.getFechaPartPresu() == null) 
             errors.add("fechaPartPresu", new ActionMessage("error.fecha.falta"));
        
        if (this.getFechaRecepCertPresu() == null) 
             errors.add("fechaRecepCertPresu", new ActionMessage("error.fecha.falta"));
                
                
                        
                        
        return errors;
    }
}
