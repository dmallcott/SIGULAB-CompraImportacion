/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Proveedor;

import Clases.Proveedor;
import DBMS.DBMS;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author daniel
 */
public class eliminarProveedor extends org.apache.struts.action.Action {
    
    private static final String FAILURE = "failure";
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
            throws Exception {

        Proveedor u = (Proveedor) form;
        HttpSession session = request.getSession(true);
        ActionErrors error = new ActionErrors();
        //obtengo una lista de carreras registradas

        //valido los campos de formulario
        /*error = u.validate(mapping, request);
        boolean huboError = false;
        
        if (error.size() != 0) {
            huboError = true;
        }

        //si los campos no son validos
        if (huboError) {
            saveErrors(request, error);
            request.setAttribute("noEliminado",FAILURE);
            System.out.println("ERROR!!");
            return mapping.findForward(FAILURE);
            //si los campos son validos
        } else {*/
            boolean eliminado = DBMS.getInstance().eliminarProveedor(u);
            //retorno a pagina de exito
            if (!eliminado) {
                request.setAttribute("noEliminado",FAILURE);
                return mapping.findForward(SUCCESS);
            } else {
                request.setAttribute("eliminado",SUCCESS);

                ArrayList<Proveedor> carreras = DBMS.getInstance().consultarProveedores();

                //si existen carreras registradas

                //retorno a pagina de exito
//                session.setAttribute("proveedores", proveedores);
                return mapping.findForward(SUCCESS);
            }
        }
}