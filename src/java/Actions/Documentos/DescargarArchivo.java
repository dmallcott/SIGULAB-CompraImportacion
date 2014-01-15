/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos;

import Clases.CartaInvitacion;
import java.io.FileInputStream;
import java.io.IOException;
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

    private int toNumber(String name) {
        if (name.equals("acto_motivado"))
            return 0;
        else if (name.equals("carta_invitacion"))
            return 1;
        else if (name.equals("cotizacion"))
            return 2;
        else if (name.equals("especifiacion_bien"))
            return 3;
        else if (name.equals("informe_recomendacion"))
            return 4;
        else if (name.equals("nota_devolucion"))
            return 5;
        else if (name.equals("solicitud_servicio"))
            return 6;
        
        return -1;
    }
    
    private void downloadAction(HttpServletResponse response, String nombreArchivo, String pathArchivo) throws IOException {
        if (nombreArchivo == null || pathArchivo == null)
            return;
        OutputStream out = response.getOutputStream();
        response.setContentType("application/rtf");
        response.setHeader("Content-Disposition", "attachment;filename="+nombreArchivo);
        FileInputStream in = new FileInputStream(pathArchivo);
        byte[] buffer = new byte[4096]; // este numero sera suficiente?
        int length;
        while ((length = in.read(buffer)) > 0) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();
    }
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession(true);
        String tipoArchivo = (String) session.getAttribute("tipoArchivo");
        String nombreArchivo = null;
        String pathArchivo = null;
        boolean result = false;
        
        switch(toNumber(tipoArchivo)) {
            // Carta invitacion
            case 1:
                CartaInvitacion documento = (CartaInvitacion) session.getAttribute("documento");
                result = documento.generateDoc();
                if (result == false)
                    return null;
                nombreArchivo = documento.getNombreArchivo();
                pathArchivo = documento.getGenPath();
                break;
            default:
                System.out.println("This should not happen.");
                break;
        }
         // remove the attr
        session.removeAttribute("tipoArchivo");
        session.removeAttribute("documento");
        
        downloadAction(response,nombreArchivo,pathArchivo);
        
        //delete doc
        
        return null;
    }
}   
