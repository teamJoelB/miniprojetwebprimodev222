/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

import java.sql.Date;
import java.time.LocalDate;

public class Client {
    private int idClient;
    private String nom;
    private String prenom;
    private String mail;
    private LocalDate dateNaissance;
    private String telephone;
    private String mdp;
    
    public Client(){}
    
    public Client(int idClient, String nom, String prenom, String mail, 
                  LocalDate dateNaissance, String telephone, String mdp) {
        this.idClient = idClient;
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.dateNaissance = dateNaissance;
        this.telephone = telephone;
        this.mdp = mdp;        
    }
    
    public int getId(){
        return this.idClient;
    }
    public String getNom(){
        return this.nom;
    }
    public String getPrenom(){
        return this.prenom;
    }
    public String getMail(){
        return this.mail;
    }
    public LocalDate getDateNaissance(){
        return this.dateNaissance;
    }
    public String getTelephone(){
        return this.telephone;
    }
    public String getMdp(){
        return this.mdp;
    }
    
    public void setId(int idClient){
        this.idClient = idClient ;
    }
    public void setNom(String nom){
        this.nom = nom;
     }
    public void setPrenom(String prenom){
        this.prenom = prenom;
     }
    public void setMail(String mail){
        this.mail = mail;
     }
    public void setDateNaissance(LocalDate dateNaissance){
        this.dateNaissance = dateNaissance;
    }
    public void setTelephone(String telephone){
        this.telephone = telephone ;
    }
    public void setMdp(String mdp){
        this.mdp = mdp;
     }
    
}
