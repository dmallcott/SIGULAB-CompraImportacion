/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos;

import Clases.CartaInvitacion;
import java.io.FileInputStream;
import java.io.OutputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author daniel
 */
public class DescargarArchivo extends Action {

    public int toNumber(String name) {
        if (name.equals("carta_invitacion"))
            return 0;
        else if (name.equals("acto_motivado"))
            return 1;
        else if (name.equals("especifiacion_bien"))
            return 2;
        
        return -1;
    }
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession(true);
        //remueve el document attribute
        
        String tipoArchivo = (String) session.getAttribute("tipoArchivo");
        boolean result = false;
        // que tal si haces un documento del cual todos hereden? makes sense to me...
        
        switch(toNumber(tipoArchivo)) {
            case 0:
                CartaInvitacion documento = (CartaInvitacion) session.getAttribute("documento");
                result = documento.generateDoc();
        }
        
        if (result == false)
            return null; // THIS IS BAD! DONT DO THIS and remove the attr
            
        OutputStream out = response.getOutputStream();
        response.setContentType("application/rtf");
        response.setHeader("Content-Disposition", "attachment;filename="+documento.getNombreArchivo());
        FileInputStream in = new FileInputStream(documento.getGenPath());
        byte[] buffer = new byte[4096]; // este numero sera suficiente?
        int length;
        while ((length = in.read(buffer)) > 0) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();

        return null;
    }
}   
