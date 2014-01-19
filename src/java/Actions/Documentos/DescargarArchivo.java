/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Actions.Documentos;

import Clases.Documento;
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
    
    // this might actually work
    //instead of making it an action make it a simple class
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession(true);
        Documento documento = (Documento) session.getAttribute("documento");
        
         // remove the attr
        session.removeAttribute("documento");
        
        downloadAction(response,documento.getNombreArchivo(), documento.getPathArchivo());
        
        //delete doc
        
        return null;
    }
}   
