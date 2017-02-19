/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import model.comment;
import util.Conx;

/**
 *
 * @author SAIF
 */
public class gestion_comment {
 
      public static void ajout (comment c) throws SQLException{
         String sql="insert into commentaires(com,auteur,offre,date) values ('"                 
                 +c.com+"','"  
                 +c.auteur+"','"                    
                 +c.offre+"',NOW())" ;
         
           Conx.getConnexion().createStatement().executeUpdate(sql);
     }}
    

