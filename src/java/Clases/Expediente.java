/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

/**
 *
 * @author daniel
 */
public class Expediente extends org.apache.struts.action.ActionForm {
    private String codigo;
    private String codCartaInvitacion;
    private String codEspecificacionBien;
    private String codInformeRecomendacion;
    private String codNotaDevolucion;
    private String codRequesicion;
    private String codSolicitudServicio;
    private String descripcion;
    private String idJefeLaboratorio;
    private String idSolicitante;
    private String tipo;

    public String getCodCartaInvitacion() {
        return codCartaInvitacion;
    }

    public void setCodCartaInvitacion(String codCartaInvitacion) {
        this.codCartaInvitacion = codCartaInvitacion;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getCodEspecificacionBien() {
        return codEspecificacionBien;
    }

    public void setCodEspecificacionBien(String codEspecificacionBien) {
        this.codEspecificacionBien = codEspecificacionBien;
    }

    public String getCodInformeRecomendacion() {
        return codInformeRecomendacion;
    }

    public void setCodInformeRecomendacion(String codInformeRecomendacion) {
        this.codInformeRecomendacion = codInformeRecomendacion;
    }

    public String getCodNotaDevolucion() {
        return codNotaDevolucion;
    }

    public void setCodNotaDevolucion(String codNotaDevolucion) {
        this.codNotaDevolucion = codNotaDevolucion;
    }

    public String getCodRequesicion() {
        return codRequesicion;
    }

    public void setCodRequesicion(String codRequesicion) {
        this.codRequesicion = codRequesicion;
    }

    public String getCodSolicitudServicio() {
        return codSolicitudServicio;
    }

    public void setCodSolicitudServicio(String codSolicitudServicio) {
        this.codSolicitudServicio = codSolicitudServicio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getIdJefeLaboratorio() {
        return idJefeLaboratorio;
    }

    public void setIdJefeLaboratorio(String idJefeLaboratorio) {
        this.idJefeLaboratorio = idJefeLaboratorio;
    }

    public String getIdSolicitante() {
        return idSolicitante;
    }

    public void setIdSolicitante(String idSolicitante) {
        this.idSolicitante = idSolicitante;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
}
