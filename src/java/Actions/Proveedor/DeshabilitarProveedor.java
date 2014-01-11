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
public class DeshabilitarProveedor extends org.apache.struts.action.Action {

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

        // Se llama a la base para que se elimine el proveedor u
        boolean eliminado = DBMS.getInstance().deshabilitarProveedor(u);

        /* En caso de no ser eliminado se manda una alerta por request a la pagina para que se avise al usuario.
         En caso de ser eliminado se vuelve a la pagina de consulta con un mensaje de exito 
         */
        if (!eliminado) {
            request.setAttribute("noDeshabilitado", FAILURE);
            return mapping.findForward(SUCCESS);
        } else {
            request.setAttribute("deshabilitado", SUCCESS);
            ArrayList<Proveedor> proveedores = DBMS.getInstance().consultarProveedores();
            request.setAttribute("proveedores", proveedores);
            return mapping.findForward(SUCCESS);
        }
    }
}
