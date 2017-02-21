/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.SQLException;
import model.offre;
import util.Conx;

/**
 *
 * @author SAIF
 */
public class gestionoffres {
      public static void ajout (offre o) throws SQLException{
         String sql="insert into offres(titre,type,description,pub,montant,montant2,url) values ('"
                 +o.titre+"','"
                 +o.type+"','"
                 +o.description+"','"
                 +o.pub+"','"
                 +o.montant+"','"
                 +o.montant2+"','"
                 +o.url+"')" ;
         
         Conx.getConnexion().createStatement().executeUpdate(sql);
     }
    
}
