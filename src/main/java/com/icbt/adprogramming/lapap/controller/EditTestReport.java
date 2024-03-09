package com.icbt.adprogramming.lapap.controller;




import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletResponse;

import com.icbt.adprogramming.labap.model.TestReport;
import com.icbt.adprogramming.labap.dao.TestReportDao;

import java.io.*;
import javax.servlet.annotation.WebServlet;


@WebServlet("/editreportdetails")

public class EditTestReport extends HttpServlet {
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
        testReportDao.updateTestReport(testReport);

        response.sendRedirect("viewallreport.jsp"); // Redirect back to viewallreport.jsp
    }
}
