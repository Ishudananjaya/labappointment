package com.icbt.adprogramming.lapap.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletResponse;

import com.icbt.adprogramming.labap.model.TestDetails;
import com.icbt.adprogramming.labap.dao.TestDao;


import java.io.*;
import javax.servlet.annotation.WebServlet;


@WebServlet("/edittestdetails")
public class EditTestDetails extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String testId = request.getParameter("testid");
        String testName = request.getParameter("testname");
        String  fee = request.getParameter("fee");
        
        
        
        
        // You can add validation and error handling here
        
        TestDetails testdetails = new TestDetails(testId, testName,fee);
        
        TestDao testDao = new TestDao();
        testDao.updateTestDetails(testdetails);
        
        response.sendRedirect("viewtestdetails.jsp"); // Redirect back to addappointment.jsp
        
               
        
    }
	
}
