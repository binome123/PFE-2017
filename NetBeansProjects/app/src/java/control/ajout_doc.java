/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import util.Conx;

/**
 *
 * @author Saif
 */
@MultipartConfig
public class ajout_doc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
       
        Part p1 = request.getPart("url");
        String url=request.getParameter("url");
        
        HttpSession s=request.getSession();
        String user=(String)s.getAttribute("user");
        
            InputStream is = p1.getInputStream();            
            File folder=new File(this.getServletContext().getRealPath("./profile_img"));
            File fout=new File(folder.getAbsolutePath()+File.separatorChar+p1.getSubmittedFileName());
            System.out.println(folder.getAbsolutePath()+File.separatorChar+p1.getSubmittedFileName());
            String image=p1.getSubmittedFileName(); 
              System.out.println("image="+image);
              if((image!=null)&&(image.length()>0)){
                  String sql="update user set url='"+image+"' where username ='"+user+"'";
                Conx.getConnexion().createStatement().executeUpdate(sql);
            // write bytes taken from uploaded file to target file
            FileOutputStream os = new FileOutputStream (fout);
                // write bytes taken from uploaded file to target file
                int ch = is.read();
                while (ch != -1) {
                    os.write(ch);
                    ch = is.read();
                }}
             
 String tp=(String)s.getAttribute("type");
 if("partenaire".equals(tp)){
              response.sendRedirect("./partener/partener.jsp");}
 else
 { response.sendRedirect("./programmer/programmer.jsp");}
           
          
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ajout_doc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ajout_doc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
