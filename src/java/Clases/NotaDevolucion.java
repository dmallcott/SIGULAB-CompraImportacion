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
 * @author patrick
 */
public class NotaDevolucion extends org.apache.struts.action.ActionForm{
    
    
    // Informacion del documento
    private String codigo;
    private Boolean c1;
    private Boolean c2;
    private Boolean c3;
    private Boolean c4;
    private Boolean c5;
    private Boolean c5nombre;
    private Boolean c5fiscal;
    private Boolean c5rif;
    private Boolean c5tlf;
    private Boolean c5banco;
    private Boolean c5contacto;
    private Boolean c5otro;
    private Boolean c6;
    private Boolean c7;
    private Boolean c8;
    private Boolean c9;
    private Boolean certificacionServicio;
    private Integer csNO;
    private String fecha;
    private Boolean pago;
    private Integer pNO;
    private Boolean recepcion;
    private Boolean requisicion;
    private Integer rpNO;
    private Integer rqNO;
    private Boolean solicitudServicio;
    private Integer ssNO;
    private String observaciones;
    private Integer oNO;
    private Boolean otro;
    private String otro1;
    
    // Variables para uso del sistema
    private String genPath;
    private Pattern patron;
    private Matcher match;
    

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public void setC1(Boolean c1) {
        this.c1 = c1;
    }

    public void setC2(Boolean c2) {
        this.c2 = c2;
    }

    public void setC3(Boolean c3) {
        this.c3 = c3;
    }

    public void setC4(Boolean c4) {
        this.c4 = c4;
    }

    public void setC5(Boolean c5) {
        this.c5 = c5;
    }

    public void setC5nombre(Boolean c5nombre) {
        this.c5nombre = c5nombre;
    }

    public void setC5fiscal(Boolean c5fiscal) {
        this.c5fiscal = c5fiscal;
    }

    public void setC5rif(Boolean c5rif) {
        this.c5rif = c5rif;
    }

    public void setC5tlf(Boolean c5tlf) {
        this.c5tlf = c5tlf;
    }

    public void setC5banco(Boolean c5banco) {
        this.c5banco = c5banco;
    }

    public void setC5contacto(Boolean c5contacto) {
        this.c5contacto = c5contacto;
    }

    public void setC5otro(Boolean c5otro) {
        this.c5otro = c5otro;
    }

    public void setC6(Boolean c6) {
        this.c6 = c6;
    }

    public void setC7(Boolean c7) {
        this.c7 = c7;
    }

    public void setC8(Boolean c8) {
        this.c8 = c8;
    }

    public void setC9(Boolean c9) {
        this.c9 = c9;
    }

    public void setCertificacionServicio(Boolean certificacionServicio) {
        this.certificacionServicio = certificacionServicio;
    }

    public void setCsNO(Integer csNO) {
        this.csNO = csNO;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setPago(Boolean pago) {
        this.pago = pago;
    }

    public void setpNO(Integer pNO) {
        this.pNO = pNO;
    }

    public void setRecepcion(Boolean recepcion) {
        this.recepcion = recepcion;
    }

    public void setRequisicion(Boolean requisicion) {
        this.requisicion = requisicion;
    }

    public void setRpNO(Integer rpNO) {
        this.rpNO = rpNO;
    }

    public void setRqNO(Integer rqNO) {
        this.rqNO = rqNO;
    }

    public void setSolicitudServicio(Boolean solicitudServicio) {
        this.solicitudServicio = solicitudServicio;
    }

    public void setSsNO(Integer ssNO) {
        this.ssNO = ssNO;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public void setoNO(Integer oNO) {
        this.oNO = oNO;
    }

    public void setOtro(Boolean otro) {
        this.otro = otro;
    }

    public void setOtro1(String otro1) {
        this.otro1 = otro1;
    }

    public void setGenPath(String genPath) {
        this.genPath = genPath;
    }

    public void setPatron(Pattern patron) {
        this.patron = patron;
    }

    public void setMatch(Matcher match) {
        this.match = match;
    }

    public String getCodigo() {
        return codigo;
    }

    public Boolean getC1() {
        return c1;
    }

    public Boolean getC2() {
        return c2;
    }

    public Boolean getC3() {
        return c3;
    }

    public Boolean getC4() {
        return c4;
    }

    public Boolean getC5() {
        return c5;
    }

    public Boolean getC5nombre() {
        return c5nombre;
    }

    public Boolean getC5fiscal() {
        return c5fiscal;
    }

    public Boolean getC5rif() {
        return c5rif;
    }

    public Boolean getC5tlf() {
        return c5tlf;
    }

    public Boolean getC5banco() {
        return c5banco;
    }

    public Boolean getC5contacto() {
        return c5contacto;
    }

    public Boolean getC5otro() {
        return c5otro;
    }

    public Boolean getC6() {
        return c6;
    }

    public Boolean getC7() {
        return c7;
    }

    public Boolean getC8() {
        return c8;
    }

    public Boolean getC9() {
        return c9;
    }

    public Boolean getCertificacionServicio() {
        return certificacionServicio;
    }

    public Integer getCsNO() {
        return csNO;
    }

    public String getFecha() {
        return fecha;
    }

    public Boolean getPago() {
        return pago;
    }

    public Integer getpNO() {
        return pNO;
    }

    public Boolean getRecepcion() {
        return recepcion;
    }

    public Boolean getRequisicion() {
        return requisicion;
    }

    public Integer getRpNO() {
        return rpNO;
    }

    public Integer getRqNO() {
        return rqNO;
    }

    public Boolean getSolicitudServicio() {
        return solicitudServicio;
    }

    public Integer getSsNO() {
        return ssNO;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public Integer getoNO() {
        return oNO;
    }

    public Boolean getOtro() {
        return otro;
    }

    public String getOtro1() {
        return otro1;
    }

    public String getGenPath() {
        return genPath;
    }

    public Pattern getPatron() {
        return patron;
    }

    public Matcher getMatch() {
        return match;
    }
   
    
}
