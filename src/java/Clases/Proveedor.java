/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

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
public class Proveedor extends org.apache.struts.action.ActionForm {
    private static final String patronRIF = "[VJG]-[0-9]{8}-[0-9]";
    private String RIF;
    private String compania;
    private String telefono;
    private String resena;
    private Pattern patron;
    private Matcher match;
    
    public Proveedor() {
        patron = Pattern.compile(patronRIF);
    }

    public String getRIF() {
        return RIF;
    }

    public void setRIF(String RIF) {
        this.RIF = RIF;
    }

    public String getCompania() {
        return compania;
    }

    public void setCompania(String compania) {
        this.compania = compania;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public String getResena() {
        return resena;
    }

    public void setResena(String resena) {
        this.resena = resena;
    }
    
    public boolean validate(final String RIF){
        match = patron.matcher(RIF);
        return match.matches();
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        if (this.getRIF() == null)
            errors.add("RIF", new ActionMessage("error.rif.malformulado"));
        
        if (!validate(getRIF()))
            errors.add("RIF", new ActionMessage("error.rif.vacio"));
        
        if (getCompania().matches("\\w") || getCompania().equals(""))
            errors.add("compania", new ActionMessage("error.compania.vacia"));
        
        return errors;
    }
}
