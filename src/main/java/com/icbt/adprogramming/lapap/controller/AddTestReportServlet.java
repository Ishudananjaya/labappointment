package com.icbt.adprogramming.lapap.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.adprogramming.labap.dao.TestReportDao;
import com.icbt.adprogramming.labap.model.TestReport;

@WebServlet("/AddTestReportServlet")
public class AddTestReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String patientId = request.getParameter("patientId");
        String patientName = request.getParameter("patientName");
        String testName = request.getParameter("testName");
        String status = request.getParameter("status");
        String reportLink = request.getParameter("reportLink");

        // You can add validation and error handling here

        TestReport testReport = new TestReport(patientId, patientName, testName, status, reportLink);

        TestReportDao testReportDao = new TestReportDao();
        testReportDao.addTestReport(testReport);

        response.sendRedirect("addtestreport.jsp"); // Redirect back to addtestreport.jsp
    }
}
