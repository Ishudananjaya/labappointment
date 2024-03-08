package com.icbt.adprogramming.labap.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.icbt.adprogramming.labap.model.Appointment;
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

    public List<TestDetails> getAllTestDetail() {
        List<TestDetails> testdetail = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT * FROM testdetails";
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String testId = resultSet.getString("testid");
                String testName = resultSet.getString("testname");
                String fee = resultSet.getString("fee");
               TestDetails testdetails = new TestDetails(testId, testName, fee);
                testdetail.add(testdetails);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return testdetail;
    }

    public TestDetails getTestById(String testId) {
        TestDetails testdetails = null;
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT * FROM testdetails WHERE testid = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, testId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String testName = resultSet.getString("testname");
                String fee = resultSet.getString("fee");
                
                
                testdetails = new TestDetails(testId, testName,fee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return testdetails;
    }

    public void updateTestDetails(TestDetails testdetails) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "UPDATE testdetails SET testname=?, fee=? WHERE testid=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, testdetails.getTestName());
            statement.setString(2, testdetails.getFee());
            statement.setString(3, testdetails.getTestId());
            
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteAppointment(String id) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "DELETE FROM appointments WHERE id=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}