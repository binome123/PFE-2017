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
public class message {
 public String titre;    
 public String msg;
 public String emet; 
  public String type;
 public String recep;
 public String url;



    public message(String titre,String msg,String emet,String type, String recep ,String url ) {     
     
    this.titre=titre;
    this.msg=msg;
    this.emet=emet;
    this.type=type;
    this.recep=recep;    
    this.url=url;
}}
