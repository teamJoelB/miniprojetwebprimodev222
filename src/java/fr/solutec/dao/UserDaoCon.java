/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.User;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserDaoCon {
    
    public static User getByLoginAndPasswordCA(String login, String password) throws SQLException {
        User u = null;
        String sql = "SELECT * FROM conseiller WHERE login = ? AND password = ?;";
        Connection connexion = AccessBb.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, login);
        prepare.setString(2, password);
        
        ResultSet rs = prepare.executeQuery();
        if (rs.next()) {
            u = new User();
            u.setId(rs.getInt("id_member"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setDateNaissance(rs.getObject("date_naissance", LocalDate.class));
            u.setPoids(rs.getInt("poids"));
            u.setSexe(rs.getString("sex"));
            u.setMail(rs.getString("mail"));
            Timestamp firstLog = rs.getTimestamp("last_connexion");
            if (firstLog == null)
                u.setFirstLog(true);
            else {
                u.setFirstLog(false);
                u.setLastConnexion((firstLog).toLocalDateTime());
            }
            u.setLogin(rs.getString("login"));
            u.setPassword(rs.getString("password"));
        }
        return u;
    }
    
    public static void insertUserInDatabaseCA(User u) throws SQLException {
        String sql = "INSERT INTO conseiller (nom, prenom, date_naissance, "
                   + "poids, sex, mail, login, password) "
                   + "VALUES (?,?,?,?,?,?,?,?)";
        Connection connexion = AccessBb.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, u.getNom());
        prepare.setString(2, u.getPrenom());
        prepare.setObject(3, u.getDateNaissance());
        prepare.setInt(4, u.getPoids());
        prepare.setString(5, u.getSexe());
        prepare.setString(6, u.getMail());
        prepare.setString(7, u.getLogin());
        prepare.setString(8, u.getPassword());
        prepare.execute();
    }
    
    public static List<User>getAll() throws SQLException{ 

        List<User> users =new ArrayList<>(); 
        String sql ="SELECT * FROM conseiller"; 
        Connection connexion =AccessBb.getConnection(); 
        Statement state =connexion.createStatement(); 
        ResultSet rs =state.executeQuery(sql); 
        while(rs.next()) { 
            User u = new User(); 
            u.setId(rs.getInt("id_member")); 
            u.setNom(rs.getString("nom")); 
            u.setPrenom(rs.getString("prenom")); 
            u.setLogin(rs.getString("login")); 
            users.add(u); 
        } 
        return users; 

    } 
}
