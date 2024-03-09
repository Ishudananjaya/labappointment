package com.icbt.adprogramming.labap.dao;

import java.sql.*;
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
}
