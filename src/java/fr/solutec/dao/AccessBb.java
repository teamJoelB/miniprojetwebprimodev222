
package fr.solutec.dao;

import java.sql.*;

public class AccessBb {
    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    private static final String DB_NAME = "dev222primo";
    private static final String URL = "jdbc:mysql://localhost:3306/" + DB_NAME + "?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
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
