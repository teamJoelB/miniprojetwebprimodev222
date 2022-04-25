/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

import java.sql.Date;
import java.time.LocalDate;

public class Conseiller {
    private int idConseiller;
    private String nom;
    private String prenom;
    private String mail;
    private LocalDate dateNaissance;
    private String telephone;
    private String mdp;
    private boolean Valider;
    
    public Conseiller(){}
    
    public Conseiller(int idConseiller, String nom, String prenom, String mail, 
                  LocalDate dateNaissance, String telephone, String mdp) {
        this.idConseiller = idConseiller;
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
        this.dateNaissance = dateNaissance;
        this.telephone = telephone;
        this.mdp = mdp;
        this.Valider = Valider;
    }
    
    public int getId(){
        return this.idConseiller;
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
    
        public boolean getValider(){
        return this.Valider;
    }
    
    public void setId(int idConseiller){
        this.idConseiller = idConseiller;
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
    
        public void setValider(boolean Valider){
        this.Valider = Valider;
    }
}