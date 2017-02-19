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

import model.offre;



 
public class saveoffre extends HttpServlet {

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession s=request.getSession();
     String us=(String)s.getAttribute("user");

        String titre = request.getParameter("titre");
       String type = request.getParameter("type");
       String description = request.getParameter("description");
        String pub = request.getParameter("aut");
       String montant = request.getParameter("montant");
       String montant2 = request.getParameter("montant2");
       String url = request.getParameter("url");

       System.out.print(titre+" "+type+" "+description+" "+montant+" "+montant2+" "+pub);
       
      offre o =new offre(titre,type,description,pub,montant,montant2,url);
       try {
                gestionoffres.ajout(o);
            } catch (SQLException ex) {
                Logger.getLogger(ajout.class.getName()).log(Level.SEVERE, null, ex);
            }
           response.sendRedirect("./partener/partener.jsp");
} }

