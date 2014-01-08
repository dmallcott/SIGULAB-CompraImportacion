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
 * @author daniel
 */
public class CartaInvitacion extends org.apache.struts.action.ActionForm {

    // Informacion del documento
    private String codigo;
    private String fecha;
    private String nomEmpresa;
    private String direccion;
    //private String presente;
    private String telefono;
    private String correo;
    private String diaOferta;
    private String mesOferta;
    private String contacto;
    private String responsable;
    private String unidadSolicitante;

    // Variables para uso del sistema
    private String genPath;
    private Pattern patron;
    private Matcher match;
    private static final String patronTelefono = "^0212-[0-9]{7}$";
    private static final String patronCorreo = "^[a-z]*@usb\\.ve$";
    private static final String patronDia = "^(0[1-9]|[12]\\d|3[01])$";
    private static final String patronMes = "^(Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Septiembre|Octubre|Noviembre|Diciembre)$";
    
    public boolean validateMesOferta(final String dia) {
        patron = Pattern.compile(patronMes);
        match = patron.matcher(dia);
        return match.matches();
    }
    
    public boolean validateDiaOferta(final String dia) {
        patron = Pattern.compile(patronDia);
        match = patron.matcher(dia);
        return match.matches();
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

        if (!validateTelefono(telefono)) {
            errors.add("telefono", new ActionMessage("error.telefono.invalido"));
        }
        
        if (!validateCorreo(correo)) {
            errors.add("correo", new ActionMessage("error.correo.invalido"));
        }
        
        if (!validateDiaOferta(diaOferta)) {
            errors.add("diaOferta", new ActionMessage("error.diaoferta.invalido"));
        }
        
        if (!validateMesOferta(mesOferta)) {
            errors.add("mesOferta", new ActionMessage("error.mesoferta.invalido"));
        }
        
        if (nomEmpresa.matches("\\w") || nomEmpresa.equals(""))
            errors.add("nomEmpresa", new ActionMessage("error.campo.vacio"));
        
        if (direccion.matches("\\w") || direccion.equals(""))
            errors.add("direccion", new ActionMessage("error.campo.vacio"));
        
        if (contacto.matches("\\w") || contacto.equals(""))
            errors.add("contacto", new ActionMessage("error.campo.vacio"));

        if (responsable.matches("\\w") || responsable.equals(""))
            errors.add("responsable", new ActionMessage("error.campo.vacio"));
        
        if (unidadSolicitante.matches("\\w") || unidadSolicitante.equals(""))
            errors.add("unidadSolicitante", new ActionMessage("error.campo.vacio"));
        
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
            String appPath = shortenedPath.replace("/build/web/WEB-INF/classes/Clases/CartaInvitacion.class", "");
            String[] command = {"./src/bash/genCartaInvitacion.sh",
                codigo, fecha, nomEmpresa, direccion,
                telefono, correo, diaOferta, mesOferta, contacto, responsable, unidadSolicitante};

            Process terminal = Runtime.getRuntime().exec(command, null, new File(appPath));
            terminal.waitFor();
            if (terminal.exitValue() == 0) {
                genPath = appPath + "src/documents/generated/carta_invitacion_" + codigo + ".pdf";
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

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDiaOferta() {
        return diaOferta;
    }

    public void setDiaOferta(String diaOferta) {
        this.diaOferta = diaOferta;
    }

    public String getMesOferta() {
        return mesOferta;
    }

    public void setMesOferta(String mesOferta) {
        this.mesOferta = mesOferta;
    }

    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getUnidadSolicitante() {
        return unidadSolicitante;
    }

    public void setUnidadSolicitante(String unidadSolicitante) {
        this.unidadSolicitante = unidadSolicitante;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getGenPath() {
        return genPath;
    }

    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }
}