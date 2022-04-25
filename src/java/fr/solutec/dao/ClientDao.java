/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Client;
import java.sql.*;
import java.time.LocalDate;

public class ClientDao {
    public static Client getByMailAndPassword(String mail, String mdp) throws SQLException {
        Client c = null;
        String sql = "SELECT * FROM clients WHERE mail = ? AND mdp = ?";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, mail);
        prepare.setString(2, mdp);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            c = new Client();
            c.setId(rs.getInt("id_client"));
            c.setNom(rs.getString("nom"));
            c.setPrenom(rs.getString("prenom"));
            c.setMail(rs.getString("mail"));
            c.setDateNaissance(rs.getObject("date_naissance", LocalDate.class));
            c.setTelephone(rs.getString("telephone"));
            c.setMdp(rs.getString("mdp"));
        }
        return  c;
    }
    
    
     public static void insertClient(Client c) throws SQLException{
        String sql = "INSERT INTO clients (nom, prenom, mail, date_naissance, telephone, mdp) VALUES (?, ?, ?, ?, ?, ?)";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, c.getNom());
        prepare.setString(2, c.getPrenom());
        prepare.setString(3, c.getMail());
        prepare.setObject(4, c.getDateNaissance());
        prepare.setString(5, c.getTelephone());
        prepare.setString(6, c.getMdp());
        
        prepare.execute();
    }
     
     public static void updateClient(Client c) throws SQLException{
        String sql = "UPDATE clients SET nom=?, prenom=?, mail=?,"
                   + "date_naissance=?, telephone=?, mdp=?"
                   + "WHERE id_client=?";
        Connection connexion = AccessDB.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, c.getNom());
        prepare.setString(2, c.getPrenom());
        prepare.setString(3, c.getMail());
        prepare.setObject(4, c.getDateNaissance());
        prepare.setString(5, c.getTelephone());
        prepare.setString(6, c.getMdp());
        prepare.setInt(7, c.getId());

        prepare.executeUpdate();
    }
     
     public static int getSolde(Client c) throws SQLException {
        String sql = "SELECT solde FROM comptes WHERE id_client = ?";
        Connection connexion = AccessDB.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);        
        prepare.setInt(1, c.getId());
        ResultSet rs = prepare.executeQuery();
        int solde = 0;
        if(rs.next()){
            solde = rs.getInt("solde");
        }
        return solde;
     }

     public static boolean getEtatCarte(Client c) throws SQLException {
        String sql = "SELECT cartes.etat FROM cartes, clients, comptes "
                   + "WHERE comptes.id_client = clients.id_client " 
                   + "AND cartes.id_compte = comptes.id_compte "
                   + "AND clients.id_client = ?";
        Connection connexion = AccessDB.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);        
        prepare.setInt(1, c.getId());
        ResultSet rs = prepare.executeQuery();
        boolean etat = true;
        if(rs.next()){
            etat = rs.getBoolean("etat");
        }
        return etat;
     }
     
     public static void setEtatCarte(Client c, boolean etat) throws SQLException {
        String sql = "UPDATE cartes, comptes, clients SET etat= ? WHERE "
                   + "comptes.id_client = clients.id_client AND "
                   + "cartes.id_compte = comptes.id_compte AND " 
                   + "clients.id_client = ?";
        Connection connexion = AccessDB.getConnection();
        PreparedStatement prepare = connexion.prepareStatement(sql);        
        prepare.setBoolean(1, etat);
        prepare.setInt(2, c.getId());
        prepare.executeUpdate();
     }
}
