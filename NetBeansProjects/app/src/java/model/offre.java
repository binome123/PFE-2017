/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author SAIF
 */
public class offre {
     
 public String titre;
 public String type;
 public String description;
 public String pub;
 public String montant;
 public String montant2;
 public String url;


    public offre(String titre, String type, String description,String pub, String montant,String montant2,String url) {
       this.titre=titre;
       this.type=type;
       this.description=description;     
       this.pub=pub;
       this.montant=montant;
       this.montant2=montant2;
       this.url=url;
       
    }
    
}
