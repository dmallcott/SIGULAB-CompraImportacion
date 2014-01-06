/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import Clases.Usuario;
import DBMS.DBMS;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author daniel
 */
public class IniciarSesion extends org.apache.struts.action.Action {

    private static final String FAILURE = "failure";
    private static final String COORDINADOR = "coordinador";

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

        Usuario u = (Usuario) form;
        HttpSession session = request.getSession(true);
        ActionErrors errors = u.validate(mapping, request);

        if (errors.size() != 0) {
            saveErrors(request, errors);
            return mapping.findForward(FAILURE);
        } else {
            Usuario tmp = DBMS.getInstance().verificarUsuario(u);

            if (tmp.getUsbid() != null) {
                if (tmp.getTipousuario().equals("coordinador")) {
                    session.setAttribute("usbid", tmp.getUsbid());
                    return mapping.findForward(COORDINADOR);
                } else {
                    return mapping.findForward(FAILURE);
                }
            } else {
                errors.add("contrasena", new ActionMessage("error.contrasena.missmatch"));
                saveErrors(request, errors);
                return mapping.findForward(FAILURE);
            }
        }
    }
}
