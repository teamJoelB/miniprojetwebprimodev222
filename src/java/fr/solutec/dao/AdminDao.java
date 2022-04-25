/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Admin;
import java.sql.*;
import java.time.LocalDate;

public class AdminDao {
    public static Admin getByMailAndPassword(String mail, String mdp) throws SQLException {
        Admin a = null;
        String sql = "SELECT * FROM Admin WHERE mail = ? AND password = ?";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, mail);
        prepare.setString(2, mdp);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            a = new Admin();
            a.setId(rs.getInt("id_admin"));
            a.setNom(rs.getString("nom"));
            a.setPrenom(rs.getString("prenom"));
            a.setMail(rs.getString("mail"));
            a.setDateNaissance(rs.getObject("date_naissance", LocalDate.class));
            a.setTelephone(rs.getString("telephone"));
           // u.setMdp(rs.getString("mdp"));
        }
        return  a;
    }
    
    
/*     public static void insertAdmin(Admin a) throws SQLException{
        String sql = "INSERT INTO Admin (nom, prenom, mail, date_naissance, telephone, mdp) VALUES (?, ?, ?, ?, ?, ?)";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, a.getNom());
        prepare.setString(2, a.getPrenom());
        prepare.setString(4, a.getMail());
        prepare.setObject(3, a.getDateNaissance());
        prepare.setString(5, a.getTelephone());
        prepare.setString(5, a.getMdp());
        
        prepare.execute();
    }*/
         
}
