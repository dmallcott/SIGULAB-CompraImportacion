/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos;

import Clases.CartaInvitacion;
import Clases.Proveedor;
import DBMS.DBMS;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author daniel
 */
public class AgregarCartaInvitacion extends org.apache.struts.action.Action {
    
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";
    
    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception 
    {

        //CartaInvitacion carta = (CartaInvitacion) form;
        HttpSession session = request.getSession(true);  
        //String user = (String) session.getAttribute("usbid"); // crea un usuario unico admin para pruebas
        boolean huboError = false;
        ActionErrors error = new ActionErrors();
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
        
        
        
        //valido los campos de formulario
        //error = carta.validate(mapping, request);        

        if (error.size() != 0) {
            huboError = true;
        }

        //si los campos no son validos
        if (huboError) {
            saveErrors(request, error);
            request.setAttribute("noAgregado", FAILURE);
            return mapping.findForward(FAILURE);
            //si los campos son validos
        } else {
            /*
             boolean registro = DBMS.getInstance().AgregarCartaInvitacion(user, carta);
             // wat now
            if (registro) {
                request.setAttribute("agregado",SUCCESS);
                
            } else {
                request.setAttribute("yaAgregado",FAILURE);
                saveErrors(request, error);
            }*/
            boolean gen = test.generateDoc();
            if (gen == true){
                OutputStream out = response.getOutputStream();
                response.setContentType("application/rtf");
                response.setHeader("Content-Disposition","attachment;filename=carta_invitacion_"+test.getCodigo()+".pdf");
                FileInputStream in = new FileInputStream("/home/daniel/NetBeansProjects/SIGULAB-CompraImportacion/src/documents/generated/carta_invitacion_"+test.getCodigo()+".pdf");
                byte[] buffer = new byte[4096];
                int length;
                while ((length = in.read(buffer)) > 0){
                    out.write(buffer, 0, length);
                }
                in.close();
                out.flush();
                
            }
        }  
        //return mapping.findForward(SUCCESS);
        return null;
    }   
}
