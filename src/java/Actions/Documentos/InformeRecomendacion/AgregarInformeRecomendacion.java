/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos.InformeRecomendacion;

import Clases.InformeRecomendacion;
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
 * @author Daniela Rodriguez
 */
public class AgregarInformeRecomendacion extends org.apache.struts.action.Action{
    
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

        InformeRecomendacion informe = (InformeRecomendacion) form;
        HttpSession session = request.getSession(true);
        Usuario user = (Usuario) session.getAttribute("usuario");
        ActionErrors error = new ActionErrors();

        //valido los campos de formulario
        error = informe.validate(mapping, request);

        Item item = new Item();
        informe.setItems(new ArrayList<Item>());
        for (int i = 0; request.getParameter("opcion1"+i) != null; i++) {
            item.setNumero(i+1);
            item.setOpcion1(Boolean.valueOf(request.getParameter("opcion1"+i)));
            item.setOpcion2(Boolean.valueOf(request.getParameter("opcion2"+i)));
            item.setOpcion3(Boolean.valueOf(request.getParameter("opcion3"+i)));
            item.setOpcion4(Boolean.valueOf(request.getParameter("opcion4"+i)));
            item.setOpcion5(Boolean.valueOf(request.getParameter("opcion5"+i)));
            item.setOpcion6(Boolean.valueOf(request.getParameter("opcion6"+i)));
            item.setOpcion7(Boolean.valueOf(request.getParameter("opcion7"+i)));
            item.setOpcion8(Boolean.valueOf(request.getParameter("opcion8"+i)));
            item.setOpcion9(Boolean.valueOf(request.getParameter("opcion9"+i)));
            
            informe.getItems().add(item);
        }
        
        //si los campos no son validos
        if (error.size() != 0) {
            saveErrors(request, error);
            request.setAttribute("noAgregado", FAILURE);
            return mapping.findForward(FAILURE);
            //si los campos son validos
        } else {
            boolean registro = DBMS.getInstance().AgregarInformeRecomendacion(user, informe);
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
