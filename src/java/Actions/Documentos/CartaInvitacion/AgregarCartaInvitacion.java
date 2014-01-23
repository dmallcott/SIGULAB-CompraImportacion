/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos.CartaInvitacion;

import Clases.CartaInvitacion;
import Clases.Usuario;
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
            throws Exception {
        
        CartaInvitacion carta = (CartaInvitacion) form;
        HttpSession session = request.getSession(true);        
        Usuario user = (Usuario) session.getAttribute("usuario");
        ActionErrors error = new ActionErrors();

        //valido los campos de formulario
        error = carta.validate(mapping, request);        

        //si los campos no son validos
        if (error.size() != 0) {
            saveErrors(request, error);
            request.setAttribute("noAgregado", FAILURE);
            request.setAttribute("CartaInvitacion", carta);
            return mapping.findForward(FAILURE);
            
            //si los campos son validos
        } else {
            boolean registro = DBMS.getInstance().AgregarCartaInvitacion(user, carta);
            // wat now
            if (registro) {
                request.setAttribute("agregado", SUCCESS);
                return mapping.findForward(SUCCESS);
                
            } else {
                request.setAttribute("yaAgregado", FAILURE);
                saveErrors(request, error);
                return mapping.findForward(FAILURE);
            }
        }        
    }    
}
