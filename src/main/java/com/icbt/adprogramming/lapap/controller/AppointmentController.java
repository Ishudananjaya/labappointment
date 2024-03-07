package com.icbt.adprogramming.lapap.controller;


import javax.servlet.*;
import javax.servlet.http.*;

import com.icbt.adprogramming.labap.dao.AppointmentDAO;
import com.icbt.adprogramming.labap.model.Appointment;

import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/appointment")
public class AppointmentController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String testName = request.getParameter("testname");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        
        // You can add validation and error handling here
        
        Appointment appointment = new Appointment(id, name, testName, date, time);
        
        AppointmentDAO appointmentDAO = new AppointmentDAO();
        appointmentDAO.addAppointment(appointment);
        
        response.sendRedirect("addappointment.jsp"); // Redirect back to addappointment.jsp
        
               
        
    }
	
	
    
}
