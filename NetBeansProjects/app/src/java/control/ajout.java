/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user;
/**
 * Servlet implementation class UserDataServlet
 */
public class ajout extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
            
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
                String password2 = request.getParameter("password2");
	        String type=request.getParameter("o");
                System.out.print(username+" "+name+" "+email+" "+password+" "+type);
                  String d="0";
                String p="0";
                if(type.equalsIgnoreCase("programmer")){
                    d="1";
                }else{
                    p="1";
                }
              
                
                user u =new user(name, username, email, password, d, p);
            try {
                gestionuser.ajout(u);
            } catch (SQLException ex) {
                Logger.getLogger(ajout.class.getName()).log(Level.SEVERE, null, ex);
            }
		response.sendRedirect("index.jsp");
			
		}
                }
	

