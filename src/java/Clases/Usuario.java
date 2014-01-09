/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author daniel
 */
public class Usuario extends org.apache.struts.action.ActionForm {

    private String usbid;
    private String tipousuario;
    private String contrasena;
    private String unidad;
    private String nombre;
    // En caso de deber manejar esto tu, manejalo como salted hash por lo menos.

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }
    
    @Override
    public String toString() {
        return "" + "Usbid: " + usbid + ", Tipo de Usuario: " + tipousuario ;
    }

    public String getUsbid() {
        return usbid;
    }

    public void setUsbid(String usbid) {
        this.usbid = usbid;
    }

    public String getTipousuario() {
        return tipousuario;
    }

    public void setTipousuario(String tipousuario) {
        this.tipousuario = tipousuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        if (getUsbid() == null || getUsbid().length() < 1) {
            errors.add("usbid", new ActionMessage("error.usbid.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        
        if (getContrasena() == null || getContrasena().length() < 1) {
            errors.add("contrasena", new ActionMessage("error.contrasena.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}
