/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import Actions.Documentos.InformeRecomendacion.Item;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
    private ArrayList<Item> items;
   
    public String toStringSQL() {
        String result = "";
        for (int i = 0; i < items.size(); i++){
            result = result +items.get(i).toString();
        }
        return result;
    }
    
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
        return false;
    }

    public ArrayList<Item> getItems() {
        return items;
    }

    public void setItems(ArrayList<Item> items) {
        this.items = items;
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
    
    public String getGenPath() {
        return genPath;
    }    
    
    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }
    
}
