package com.Controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection_DB {
    // Create database connection......
    
    private static String url = "jdbc:mysql://localhost:3306/train"; // Database URL
    private static String user = "root"; // Database username
    private static String pass = "123321"; // Database password
    private static Connection con; // Connection object to manage the database connection
    
    // Method to get the database connection
    public static Connection getConnection() {
    
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection using the provided URL, username, and password
            con = DriverManager.getConnection(url, user, pass);

        } catch (Exception e) {
            // Print an error message if the connection fails
            System.out.println("Database Connection Not Success ! ");
        }
        // Return the connection object (can be null if connection failed)
        return con;
    }
}
