/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author jidc28
 */
public class Prepa extends org.apache.struts.action.ActionForm {

//    En esta class pondran los getters y setters y las funciones que
//    sean necesarias sobre la clase, dentro de proximas prepas 
//    agregaremos algunas tipo matchers y patterns.
    
    private String codigo;
    private String nombre;

    @Override
    public String toString() {
        return "Prepa{" + "codigo=" + codigo + ", nombre=" + nombre + '}';
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
//        
//        Por los momentos, esto es ignorable pero igual coloquenlo.
//        
//        if () {
//            errors.add("<nombre>", new ActionMessage("<actionDeclarado>"));
//            // TODO: add '<actionDeclarado>' key to your resources
//        }
//        
        return errors;
    }
}
