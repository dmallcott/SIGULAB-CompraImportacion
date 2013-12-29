/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.sql.Date;

/**
 *
 * @author daniel
 */
public class CartaInvitacion {
    private String codigo; // todos los docs tienen codigo? podrias hacer una interfaz con eso
    private Date Fecha;
    private String nomEmpresa;
    private String direccion;
    private String presente;
    private String telefono;
    private String correo;
    private String diaOferta;
    private String mesOferta;
    private String contacto;
    private String responsable;
    private String unidadSolicitante;

    
    public static void main(String[] args) throws IOException, InterruptedException{
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
        
    }
    
    public boolean generateDoc() throws IOException, InterruptedException {
        Process terminal;
        
        String[] unzipODT = {"unzip","src/documents/templates/carta_invitacion.odt","-d",codigo};
        String[] zipODT = {"bash", "-c", "zip -r carta_invitacion_"+codigo+".odt *"};
        String[] moveODT = {"bash","-c","cp carta_invitacion_"+codigo+".odt ../src/documents/generated"};
        String[] removeDir = {"bash","-c","rm -rf "+codigo+"/"};
        
        String[] cambioCodigo = {"bash", "-c", "sed -i 's/.%CODIGO%./>"+codigo+"</g' "+codigo+"/content.xml"};
        String[] cambioFecha = {"bash", "-c", "sed -i 's/.%FECHA%./>"+Fecha.toString()+"</g' "+codigo+"/content.xml"};
        String[] cambioNomEmpresa = {"bash", "-c", "sed -i 's/.%NOMBRE_EMPRESA%./>"+nomEmpresa+"</g' "+codigo+"/content.xml"};
        String[] cambioDireccion = {"bash", "-c", "sed -i 's/.%DIRECCION%./>"+direccion+"</g' "+codigo+"/content.xml"};
        String[] cambioPresente = {"bash", "-c", "sed -i 's/.%PRESENTE%./>"+presente+"</g' "+codigo+"/content.xml"};
        String[] cambioTelefono = {"bash", "-c", "sed -i 's/.%TELEFONO%./ "+telefono+" /g' "+codigo+"/content.xml"};
        String[] cambioCorreo = {"bash", "-c", "sed -i 's/.%CORREO%./ "+correo+" /g' "+codigo+"/content.xml"};
        String[] cambioDia = {"bash", "-c", "sed -i 's/.%DIA_OFERTA%./ "+diaOferta+" /g' "+codigo+"/content.xml"};
        String[] cambioMes = {"bash", "-c", "sed -i 's/.%MES_OFERTA%./ "+mesOferta+" /g' "+codigo+"/content.xml"};
        String[] cambioContacto = {"bash", "-c", "sed -i 's/.%CONTACTO%./ "+contacto+"</g' "+codigo+"/content.xml"};
        String[] cambioResponsable = {"bash", "-c", "sed -i 's/.%RESPONSABLE%./>"+responsable+"</g' "+codigo+"/content.xml"};
        String[] cambioSolicitante = {"bash", "-c", "sed -i 's/.%UNIDAD_SOLICITANTE%./>"+unidadSolicitante+"</g' "+codigo+"/content.xml"}; 
        
        terminal = Runtime.getRuntime().exec(unzipODT);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioCodigo);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioFecha);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioNomEmpresa);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioDireccion);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioPresente);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioTelefono);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioCorreo);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioDia);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioMes);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioContacto);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioResponsable);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(cambioSolicitante);
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(zipODT,null,new File("./"+codigo));
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(moveODT,null,new File("./"+codigo));
        terminal.waitFor();
        terminal = Runtime.getRuntime().exec(removeDir);
        terminal.waitFor();
        
        return true;
    }
    
    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
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

    public String getPresente() {
        return presente;
    }

    public void setPresente(String presente) {
        this.presente = presente;
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
    
    
}
