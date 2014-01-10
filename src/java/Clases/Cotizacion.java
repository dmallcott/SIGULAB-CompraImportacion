/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import Actions.Documentos.Cotizacion.Item;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;
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
public class Cotizacion extends org.apache.struts.action.ActionForm {

    // Informacion del documento
    private String rif;
    private String nomEmpresa;
    private String direccion;
    private String telefono;
    private String fax;
    private String correo;
    private String personaContacto;
    private ArrayList<Item> items;
    
    // Variables para uso del sistema
    private String genPath;
    private Pattern patron;
    private Matcher match;
    private static final String patronTelefono = "^0212-[0-9]{7}$";
    private static final String patronCorreo = "^[a-z]*@usb\\.ve$"; //cambia esto

    public String getRif() {
        return rif;
    }

    public void setRif(String rif) {
        this.rif = rif;
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

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPersonaContacto() {
        return personaContacto;
    }

    public void setPersonaContacto(String personaContacto) {
        this.personaContacto = personaContacto;
    }


    public String getGenPath() {
        return genPath;
    }

    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }

    public Pattern getPatron() {
        return patron;
    }

    public void setPatron(Pattern patron) {
        this.patron = patron;
    }

    public Matcher getMatch() {
        return match;
    }

    public void setMatch(Matcher match) {
        this.match = match;
    }

    public ArrayList<Item> getItems() {
        return items;
    }

    public void setItems(ArrayList<Item> items) {
        this.items = items;
    }
    
    
    public boolean validateTelefono(final String telefono) {
        patron = Pattern.compile(patronTelefono);
        match = patron.matcher(telefono);
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

        if (!validateTelefono(telefono)) {
            errors.add("telefono", new ActionMessage("error.telefono.invalido"));
        }
        
        if (!validateCorreo(correo)) {
            errors.add("correo", new ActionMessage("error.correo.invalido"));
        }
        
        if (nomEmpresa.matches("\\w") || nomEmpresa.equals(""))
            errors.add("nomEmpresa", new ActionMessage("error.campo.vacio"));
        
        if (direccion.matches("\\w") || direccion.equals(""))
            errors.add("direccion", new ActionMessage("error.campo.vacio"));

        
        
        return errors;
    }
}
