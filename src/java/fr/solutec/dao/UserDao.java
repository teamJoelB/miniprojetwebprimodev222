
package fr.solutec.dao;

import fr.solutec.model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public static User getByLoginAndPassword(String log, String pass) throws SQLException{
        User u = null;
        String sql = "SELECT * FROM person WHERE login = ? AND password = ?";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, log);
        prepare.setString(2, pass);
        
        ResultSet rs = prepare.executeQuery();
        if(rs.next()){
            u = new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setDateNaissance(rs.getDate("date_naissance"));
            u.setLogin(rs.getString("login"));
           // u.setPassword(rs.getString("password"));
        }
        return  u;
    }
    
     public static void inserUser(User u) throws SQLException{
        String sql = "INSERT INTO person (nom, prenom, date_naissance, login, password) VALUES (?, ?, ?, ?, ?)";
        Connection connexion = AccessDB.getConnection();
        
        PreparedStatement prepare = connexion.prepareStatement(sql);
        prepare.setString(1, u.getNom());
        prepare.setString(2, u.getPrenom());
        prepare.setDate(3, u.getDateNaissance());
        prepare.setString(4, u.getLogin());
        prepare.setString(5, u.getPassword());
        
        prepare.execute();
    }
     
     public static List<User>getAll() throws SQLException{
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM person";
        Connection connexion = AccessDB.getConnection();
        Statement state = connexion.createStatement();
        ResultSet rs = state.executeQuery(sql);
        while(rs.next()) {
            User u =new User();
            u.setId(rs.getInt("idperson"));
            u.setNom(rs.getString("nom"));
            u.setPrenom(rs.getString("prenom"));
            u.setDateNaissance(rs.getDate("date_naissance"));
            u.setLogin(rs.getString("login"));

            users.add(u);
        }
        return users;
    }


}
