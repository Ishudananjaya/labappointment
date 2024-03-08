package com.icbt.adprogramming.lapap.controller;

import javax.servlet.*;
import javax.servlet.http.*;

import com.icbt.adprogramming.labap.model.TestDetails;
import com.icbt.adprogramming.labap.dao.TestDao;


import java.io.*;
import javax.servlet.annotation.WebServlet;


@WebServlet("/testdetails")
public class AddTestDetails extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String testid = request.getParameter("testid");
        String testName = request.getParameter("testname");
        String  fee = request.getParameter("fee");
        
        
        // You can add validation and error handling here
        
        TestDetails testdetails = new TestDetails(testid, testName,fee);
        
        TestDao testDao = new TestDao();
        testDao.addTestDetails(testdetails);
        
        response.sendRedirect("addtest.jsp"); // Redirect back to addappointment.jsp
        
               
        
    }
	
}
