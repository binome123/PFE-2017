/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author saifr_000
 */
 public class user {
 public String name;
 public String username;
 public String email;
 public String password;
 public String designer;
 public String partener;

    public user(String name, String username, String email, String password, String designer, String partener) {
        this.name = name;
        this.username = username;
        this.email = email;
        this.password = password;
        this.designer=designer;
        this.partener=partener;
    }

    public user(String username, String password) {
        this.username = username;
        this.password = password;
    }
 
  
    
}
