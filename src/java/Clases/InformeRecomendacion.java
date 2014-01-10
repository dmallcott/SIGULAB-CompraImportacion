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
 * @author Daniela Rodriguez
 */
public class InformeRecomendacion extends org.apache.struts.action.ActionForm{
    
    // Informacion del documento
    private String codigo;
    private String cargo1;
    private String cargo2;
    private String diaEvaluacion;
    private String diaFinal;
    private String diaRevision;
    private String listaProveedores1;
    private String listaProveedores2;
    private String mesEvaluacion;
    private String mesFinal;
    private String mesRevision;
    private String responsable1;
    private String responsable2;
    private String unidadSolicitante1;
    private String unidadSolicitante2;

    
    // Variables para uso del sistema
    private String genPath;
    private Pattern patron;
    private Matcher match;
    private static final String patronDia = "^(0[1-9]|[12]\\d|3[01])$";
    private static final String patronMes = "^(Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Septiembre|Octubre|Noviembre|Diciembre)$";
    
    public boolean validateMes(final String mes) {
        patron = Pattern.compile(patronMes);
        match = patron.matcher(mes);
        return match.matches();
    }
    
    public boolean validateDia(final String dia) {
        patron = Pattern.compile(patronDia);
        match = patron.matcher(dia);
        return match.matches();
    }
        
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
    
        if (!validateMes(mesEvaluacion)) {
            errors.add("mesEvaluacion", new ActionMessage("error.mesEvaluacion.invalido"));
        }
        
        if (!validateMes(mesFinal)) {
            errors.add("mesFinal", new ActionMessage("error.mesFinal.invalido"));
        }
        
        if (!validateMes(mesRevision)) {
            errors.add("mesRevision", new ActionMessage("error.mesRevision.invalido"));
        }
        
        if (!validateDia(diaEvaluacion)) {
            errors.add("diaEvaluacion", new ActionMessage("error.diaEvaluacion.invalido"));
        }
        
        if (!validateDia(diaFinal)) {
            errors.add("diaFinal", new ActionMessage("error.diaFinal.invalido"));
        }
        
        if (!validateDia(diaRevision)) {
            errors.add("diaRevision", new ActionMessage("error.diaRevision.invalido"));
        }
        
        return errors;
    }
    
    
    public boolean generateDoc() {
        try {
            // Esta cantidad excesiva de strings es para calcular el path de la webapp dinamicamente.
            String absolutePath = getClass().getProtectionDomain().getCodeSource().getLocation().toString();
            String shortenedPath = absolutePath.replace("file:", "");
            String appPath = shortenedPath.replace("/build/web/WEB-INF/classes/Clases/InformeRecomendacion.class", "");
            String[] command = {"./src/bash/genInformeRecomendacion.sh",
                codigo,cargo1, cargo2,diaEvaluacion,diaFinal,diaRevision,listaProveedores1,
                listaProveedores2,mesEvaluacion,mesFinal,mesRevision,responsable1,responsable2,
                unidadSolicitante1,unidadSolicitante2};

            Process terminal = Runtime.getRuntime().exec(command, null, new File(appPath));
            terminal.waitFor();
            if (terminal.exitValue() == 0) {
                genPath = appPath + "src/documents/generated/informe_recomendacion_" + codigo + ".pdf";
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

    public String getCargo1() {
        return cargo1;
    }

    public void setCargo1(String cargo1) {
        this.cargo1 = cargo1;
    }
    
    public String getCargo2() {
        return cargo2;
    }

    public void setCargo2(String cargo2) {
        this.cargo2 = cargo2;
    }
  
    public String getDiaEvaluacion() {
        return diaEvaluacion;
    }    
    
    public void setDiaEvaluacion(String diaEvaluacion) {
        this.diaEvaluacion = diaEvaluacion;
    }    
    
    public String getDiaFinal() {
        return diaFinal;
    }    
    
    public void setDiaFinal(String diaFinal) {
        this.diaFinal = diaFinal;
    } 
    
    public String getDiaRevision() {
        return diaRevision;
    }    
    
    public void setDiaRevision(String diaRevision) {
        this.diaRevision = diaRevision;
    } 

    public String getListaProveedores1() {
        return listaProveedores1;
    }    
    
    public void setListaProveedores1(String listaProveedores1) {
        this.cargo1 = listaProveedores1;
    }
    
    public String getListaProveedores2() {
        return listaProveedores2;
    }

    public void setListaProveedores2(String listaProveedores2) {
        this.listaProveedores2 = listaProveedores2;
    }
    
    public String getMesEvaluacion() {
        return mesEvaluacion;
    }    
    
    public void setMesEvaluacion(String mesEvaluacion) {
        this.mesEvaluacion = mesEvaluacion;
    }    
    
    public String getMesFinal() {
        return mesFinal;
    }    
    
    public void setMesFinal(String mesFinal) {
        this.mesFinal = mesFinal;
    } 
    
    public String getMesRevision() {
        return mesRevision;
    }    
    
    public void setMesRevision(String mesRevision) {
        this.mesRevision = mesRevision;
    } 

    public String getResponsable1() {
        return responsable1;
    }

    public void setResponsable1(String responsable1) {
        this.responsable1 = responsable1;
    }
    
    public String getResponsable2() {
        return responsable2;
    }

    public void setResponsable2(String responsable2) {
        this.responsable2 = responsable2;
    }
    
    public String getUnidadSolicitante1() {
        return unidadSolicitante1;
    }

    public void setUnidadSolicitante1(String unidadSolicitante1) {
        this.unidadSolicitante1 = unidadSolicitante1;
    }
    
    public String getUnidadSolicitante2() {
        return unidadSolicitante2;
    }

    public void setUnidadSolicitante(String responsable2) {
        this.unidadSolicitante2 = unidadSolicitante2;
    }    
      
    
    public String getGenPath() {
        return genPath;
    }    
    
    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }
    
}
