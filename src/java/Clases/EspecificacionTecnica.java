/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Daniela Rodriguez
 */
public class EspecificacionTecnica extends org.apache.struts.action.ActionForm {

    // Informacion del documento
    private String codigo;
    private String item;
    private String caracteristicas;
    private String cantidad;

    
    // Variables para uso del sistema
    private String genPath;
    private Pattern patron;
    private Matcher match;
    private static final String patronNumerico = "[0-9]{1000,}$";
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        if (!validateCantidad(cantidad)) {
            errors.add("cantidad", new ActionMessage("error.cantidad.invalido"));
        }
        return errors;
    }
    
    public boolean validateCantidad(final String cantidad) {
        patron = Pattern.compile(patronNumerico);
        match = patron.matcher(cantidad);
        return match.matches();
    }
    
    public boolean generateDoc() {
        try {
            // Esta cantidad excesiva de strings es para calcular el path de la webapp dinamicamente.
            String absolutePath = getClass().getProtectionDomain().getCodeSource().getLocation().toString();
            String shortenedPath = absolutePath.replace("file:", "");
            String appPath = shortenedPath.replace("/build/web/WEB-INF/classes/Clases/EspecificacionTecnica.class", "");
            String[] command = {"./src/bash/genEspecificacionTecnica.sh",
                codigo,item, caracteristicas,cantidad};

            Process terminal = Runtime.getRuntime().exec(command, null, new File(appPath));
            terminal.waitFor();
            if (terminal.exitValue() == 0) {
                genPath = appPath + "src/documents/generated/especificacion_tecnica_" + codigo + ".pdf";
                return true;
            } else {
                return false;
            }
        } catch (IOException ex) {
            return false;
        } catch (InterruptedException ex) {
            return false;
        }
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }
  
    public String getCaracteristicas() {
        return caracteristicas;
    }    
    
    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
    }    
    
    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getGenPath() {
        return genPath;
    }    
    
    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }
}
