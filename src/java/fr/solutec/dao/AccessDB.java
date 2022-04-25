package fr.solutec.dao;

import java.sql.*;

public class AccessDB {
    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    private static final String DB_NAME = "Banque";
    private static final String URL = "jdbc:mysql://localhost/" + DB_NAME;
    private static final String USER = "root";
    private static final String PASSWORD = "";
    
    static{
        try {
            Class.forName(DRIVER_NAME).newInstance();
        } catch (Exception e) {
            System.err.println("le pillote n'a pas pu se charger");
        }
    }
    
    public static Connection getConnection() throws SQLException{
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
