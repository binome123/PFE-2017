/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import model.cv;
import util.Conx;

/**
 *
 * @author SAIF
 */
public class gestioncv {
      public static void ajout (cv c) throws SQLException{
         String sql="insert into cv(prog,type,description,url) values ('"                 
                 +c.prog+"','"  
                 +c.type+"','"
                 +c.description+"','"                               
                 +c.url+"')" ;
         
           Conx.getConnexion().createStatement().executeUpdate(sql);
     }
    
}
