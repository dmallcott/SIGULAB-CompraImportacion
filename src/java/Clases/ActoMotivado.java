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
    private String fecha;
    private String proveedor;
    private String bienOServicio;
    private String motivoReq;
    private String responsable;
    private String justificacion;
    private String proveniente;
    private String cargo;

    
    // Variables para uso del sistema
    private String genPath;
    
    public boolean validateFecha(String fecha) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
        try {
            sdf.parse(fecha);
            return true;
        } catch (ParseException ex) {
            return false;
        }
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        

        return errors;
    }
    
    public boolean generateDoc() {
        try {
            // Esta cantidad excesiva de strings es para calcular el path de la webapp dinamicamente.
            String absolutePath = getClass().getProtectionDomain().getCodeSource().getLocation().toString();
            String shortenedPath = absolutePath.replace("file:", "");
            String appPath = shortenedPath.replace("/build/web/WEB-INF/classes/Clases/ActoMotivado.class", "");
            String[] command = {"./src/bash/genActoMotivado.sh",
                codigo,fecha, proveedor,
                bienOServicio, motivoReq, responsable, justificacion, cargo};

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
    
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }     
    
    public String getBienOServicio() {
        return bienOServicio;
    }

    public void setbienOServicio(String bienOServicio) {
        this.bienOServicio = bienOServicio;
    }     
    
    public String getJustificacion() {
        return justificacion;
    }

    public void setJustificacion(String justificacion) {
        this.justificacion = justificacion;
    }     
    
    public String getProveniente() {
        return proveniente;
    }

    public void setProveniente(String proveniente) {
        this.proveniente = proveniente;
    }
    
    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
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
