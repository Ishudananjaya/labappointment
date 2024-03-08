package com.icbt.adprogramming.labap.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import com.icbt.adprogramming.labap.model.TestDetails;

public class TestDao {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/testdb";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "@#En9500gt";
    
    private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";

    static {
        try {
            Class.forName(DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    

    public void addTestDetails(TestDetails testdetails) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "INSERT INTO testdetails (testid, testname,fee) VALUES (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, testdetails.getTestId());
            statement.setString(2, testdetails.getTestName());
            statement.setString(3, testdetails.getFee());
           
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

   
    
    
    
    
}
