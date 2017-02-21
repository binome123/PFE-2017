package control;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.cv;



 
public class ajoutcv extends HttpServlet {

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession s=request.getSession();
     String us=(String)s.getAttribute("user");
     
       String prog = request.getParameter("aut");
       String type = request.getParameter("type");
       String description = request.getParameter("description");    
       String url = request.getParameter("url");

       System.out.print(prog+" "+type+" "+description+" "+url);
       
      cv c =new cv(prog,type,description,url);
       try {
            gestioncv.ajout(c);
            } catch (SQLException ex) {
                Logger.getLogger(ajout.class.getName()).log(Level.SEVERE, null, ex);
            }
           response.sendRedirect("./programmer/programmer.jsp");
} }

