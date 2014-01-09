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
public class EspecificacionTecnica extends org.apache.struts.action.ActionForm {

    // Informacion del documento
    private String codigo;
    private String fecha;
    private int item;
    private int NoRegistro;
    private String caracteristicas;
    private int cantidad;

    
    // Variables para uso del sistema
    private String genPath;
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if (codigo == null) {
            errors.add("codigo", new ActionMessage("error.codigo.null"));
        }

        return errors;
    }
    
    /*
     public static void test() throws IOException, InterruptedException{
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
        
     }*/
    /**
     * Este metodo genera el documento asociado a la clase en la carpeta src/documentos/generated. Corre el script 'genCartaInvitacion' el cual se encarga de todo el proceso.
     *
     * @return Un booleano con el estatus de salida de 'genCartaInvitacion'
     */
    public boolean generateDoc() {
        try {
            // Esta cantidad excesiva de strings es para calcular el path de la webapp dinamicamente.
            String absolutePath = getClass().getProtectionDomain().getCodeSource().getLocation().toString();
            String shortenedPath = absolutePath.replace("file:", "");
            String appPath = shortenedPath.replace("/build/web/WEB-INF/classes/Clases/EspecificacionTecnica.class", "");
            String[] command = {"./src/bash/genEspecificacionTecnica.sh",
                codigo, fecha, Integer.toString(item), Integer.toString(NoRegistro),
                caracteristicas,Integer.toString(cantidad)};

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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    public String getItem() {
        return Integer.toString(item);
    }

    public void setItem(int item) {
        this.item = item;
    }
  
    public String getNoRegistro() {
        return Integer.toString(NoRegistro);
    }

    public void setNoRegistro(int NoRegistro) {
        this.NoRegistro = NoRegistro;
    }
    
    public String getCaracteristicas() {
        return caracteristicas;
    }    
    
    public void setCaracteristicas(String caracteristicas) {
        this.caracteristicas = caracteristicas;
    }    
    
    public String getCantidad() {
        return Integer.toString(cantidad);
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getGenPath() {
        return genPath;
    }    
    
    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }
}
