/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import model.message;
import util.Conx;

/**
 *
 * @author SAIF
 */
public class gestion_msg {
     public static void ajout (message m) throws SQLException{
         String sql="insert into message(titre,msg,emet,type,recep,date,url) values ('"      
                 +m.titre+"','"
                 +m.msg+"','"  
                 +m.emet+"','"
                 +m.type+"','"
                 +m.recep+"',NOW(),'"
                 +m.url+"')";
         
           Conx.getConnexion().createStatement().executeUpdate(sql);
     }
    
    
}
