/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import util.Conx;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.user;

/**
 *
 * @author saifr_000
 */
public class gestionuser {
   
        
     public static int verif(user u) throws SQLException{
     int v = 0;  
     String sql="select * from user where username ='"+u.username+"'and password ='"+u.password+"'and etat = 1";
     ResultSet rs =Conx.getConnexion().createStatement().executeQuery(sql);
     if(rs.next()){
         if(rs.getString(5).equalsIgnoreCase("1")){
             v=1;
         }
          if(rs.getString(6).equalsIgnoreCase("1")){
             v=2;
         }
           if(rs.getString(7).equalsIgnoreCase("1")){
             v=3;
         }
     }
    
     return v;  
     
     }  
     public static void ajout (user u) throws SQLException{
         String sql="insert into user(name,username,email,password,programmer,partener) values ('"
                 +u.name+"','"
                 +u.username+"','"
                 +u.email+"','"
                 +u.password+"','"
                 +u.designer+"','"
                 +u.partener+"')";
         
         Conx.getConnexion().createStatement().executeUpdate(sql);
     }
     
   
     
    }
   

