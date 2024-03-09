package com.icbt.adprogramming.labap.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.icbt.adprogramming.labap.model.TestDetails;
import com.icbt.adprogramming.labap.model.TestReport;

public class TestReportDao {
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

    public void addTestReport(TestReport testReport) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "INSERT INTO testreport (patientid, patientname, testname, status, reportlink) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, testReport.getPatientId());
            statement.setString(2, testReport.getPatientName());
            statement.setString(3, testReport.getTestName());
            statement.setString(4, testReport.getStatus());
            statement.setString(5, testReport.getReportLink());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    public List<TestReport> getAllTestReports() {
        List<TestReport> testReports = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT * FROM testreport";
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String patientId = resultSet.getString("patientid");
                String patientName = resultSet.getString("patientname");
                String testName = resultSet.getString("testname");
                String testStatus = resultSet.getString("status");
                String reportLink = resultSet.getString("reportlink");

                TestReport testReport = new TestReport(patientId, patientName, testName, testStatus, reportLink);
                testReports.add(testReport);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return testReports;
    }

    public TestReport getTestReportById(String patientId) {
        TestReport testReport = null;
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT * FROM testreport WHERE patientid = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, patientId);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String patientName = resultSet.getString("patientname");
                String testName = resultSet.getString("testname");
                String status = resultSet.getString("status");
                String reportLink = resultSet.getString("reportlink");
                testReport = new TestReport(patientId, patientName, testName, status, reportLink);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return testReport;
    }

    public void updateTestReport(TestReport testReport) {
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "UPDATE testreport SET patientname=?, testname=?, status=?, reportlink=? WHERE patientid=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, testReport.getPatientName());
            statement.setString(2, testReport.getTestName());
            statement.setString(3, testReport.getStatus());
            statement.setString(4, testReport.getReportLink());
            statement.setString(5, testReport.getPatientId());
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
