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
        Conseiller co = null;
        String sql = "SELECT * FROM conseillers WHERE mail = ? AND mdp = ?";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, mail);
        prepare.setString(2, mdp);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            co = new Conseiller();
            co.setId(rs.getInt("id_conseiller"));
            co.setNom(rs.getString("nom"));
            co.setPrenom(rs.getString("prenom"));
            co.setMail(rs.getString("mail"));
            co.setDateNaissance(rs.getObject("date_naissance", LocalDate.class));
            co.setTelephone(rs.getString("telephone"));
            co.setMdp(rs.getString("mdp"));
        }
        return  co;
    }
    
    
     public static void updateConseiller(Conseiller co) throws SQLException{
        String sql = "UPDATE conseillers SET nom=?, prenom=?, mail=?,"
                   + "date_naissance=?, mdp=?, telephone=?"
                   + "WHERE id_Conseiller=?";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, co.getNom());
        prepare.setString(2, co.getPrenom());
        prepare.setString(3, co.getMail());
        prepare.setObject(4, co.getDateNaissance());
        prepare.setString(5, co.getTelephone());
        prepare.setString(6, co.getMdp());
        prepare.setInt(6, co.getId());
        
        prepare.execute();
    
    }
         
}