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

        Item item = new Item();
        informe.setItems(new ArrayList<Item>());
        for (int i = 0; request.getParameter("empresa"+i) != null; i++) {
            item = new Item();
            item.setNumero(i+1);
            item.setEmpresa(request.getParameter("empresa"+i));
            item.setItems(request.getParameter("items"+i));
            item.setOpcion1(Boolean.valueOf(request.getParameter("opcion"+i+"1")));
            item.setOpcion2(Boolean.valueOf(request.getParameter("opcion"+i+"2")));
            item.setOpcion3(Boolean.valueOf(request.getParameter("opcion"+i+"3")));
            item.setOpcion4(Boolean.valueOf(request.getParameter("opcion"+i+"4")));
            item.setOpcion5(Boolean.valueOf(request.getParameter("opcion"+i+"5")));
            item.setOpcion6(Boolean.valueOf(request.getParameter("opcion"+i+"6")));
            item.setOpcion7(Boolean.valueOf(request.getParameter("opcion"+i+"7")));
            item.setOpcion8(Boolean.valueOf(request.getParameter("opcion"+i+"8")));
            item.setOpcion9(Boolean.valueOf(request.getParameter("opcion"+i+"9")));
            
            informe.getItems().add(item);
        }
        
        //valido los campos de formulario
        //error = informe.validate(mapping, request);
        
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
