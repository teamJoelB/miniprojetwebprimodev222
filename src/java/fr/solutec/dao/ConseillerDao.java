/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import java.sql.*;
import java.time.LocalDate;
import fr.solutec.model.Conseiller;

public class ConseillerDao {
    public static Conseiller getByMailAndPassword(String mail, String mdp) throws SQLException {
        Conseiller c = null;
        String sql = "SELECT * FROM Conseillers WHERE mail = ? AND password = ?";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, mail);
        prepare.setString(2, mdp);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            c = new Conseiller();
            c.setId(rs.getInt("id_Conseiller"));
            c.setNom(rs.getString("nom"));
            c.setPrenom(rs.getString("prenom"));
            c.setMail(rs.getString("mail"));
            c.setDateNaissance(rs.getObject("date_naissance", LocalDate.class));
            c.setTelephone(rs.getString("telephone"));
           // u.setMdp(rs.getString("mdp"));
        }
        return  c;
    }
    
    
/*     public static void insertClient(Conseiller c) throws SQLException{
        String sql = "INSERT INTO Conseillers (nom, prenom, mail, date_naissance, telephone, mdp) VALUES (?, ?, ?, ?, ?, ?)";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, c.getNom());
        prepare.setString(2, c.getPrenom());
        prepare.setString(4, c.getMail());
        prepare.setObject(3, c.getDateNaissance());
        prepare.setString(5, c.getTelephone());
        prepare.setString(5, c.getMdp());
        
        prepare.execute();*/
    }
         
}