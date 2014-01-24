/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos.CartaInvitacion;

import Clases.CartaInvitacion;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author daniel
 */
public class ReqEditarCartaInvitacion extends org.apache.struts.action.Action {
    
    private static final String SUCCESS = "success";
    
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
        HttpSession session = request.getSession(true); 
        CartaInvitacion carta = (CartaInvitacion) form;
        String codCarta = (String) request.getParameter("codCartaInvitacion");
        carta = DBMS.DBMS.getInstance().getCartaInvitacion(codCarta);
        request.setAttribute("CartaInvitacion", carta);
        session.setAttribute("CartaInvitacion", carta);
        String codExp = (String) request.getParameter("codigo");
        request.setAttribute("codigo", codExp);
        session.setAttribute("codigo", codExp);
        return mapping.findForward(SUCCESS);
    }
}