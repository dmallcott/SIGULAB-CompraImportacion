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
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
/**
 *
 * @author Daniela Rodriguez
 */
public class ActoMotivado extends org.apache.struts.action.ActionForm {

    // Informacion del documento
    private String codigo;
    private String registro;
    private String fecha;
    private String motivoReq;
    private String responsable;

    
    // Variables para uso del sistema
    private String genPath;
    
    public boolean validateFecha(String fecha) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        try {
            sdf.parse(fecha);
            return true;
        } catch (ParseException ex) {
            return false;
        }
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if (codigo == null) {
            errors.add("codigo", new ActionMessage("error.codigo.null"));
        }
        
        if (!validateFecha(fecha)) {
            errors.add("fecha", new ActionMessage("error.fecha.invalida"));
        }

        return errors;
    }
    
    public boolean generateDoc() {
        try {
            // Esta cantidad excesiva de strings es para calcular el path de la webapp dinamicamente.
            String absolutePath = getClass().getProtectionDomain().getCodeSource().getLocation().toString();
            String shortenedPath = absolutePath.replace("file:", "");
            String appPath = shortenedPath.replace("/build/web/WEB-INF/classes/Clases/ActoMotivado.class", "");
            String[] command = {"./src/bash/genActoMotivado.sh",
                codigo, registro, fecha,motivoReq, responsable};

            Process terminal = Runtime.getRuntime().exec(command, null, new File(appPath));
            terminal.waitFor();
            if (terminal.exitValue() == 0) {
                genPath = appPath + "src/documents/generated/acto_motivado_" + codigo + ".pdf";
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

    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
    }
    
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    public String getMotivoReq() {
        return motivoReq;
    }

    public void setMotivoReq(String motivoReq) {
        this.motivoReq = motivoReq;
    }
    
    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }    

    public String getGenPath() {
        return genPath;
    }    
    
    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }
}
