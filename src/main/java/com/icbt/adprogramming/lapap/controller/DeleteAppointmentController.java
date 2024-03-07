package com.icbt.adprogramming.lapap.controller;

import javax.servlet.*;
import javax.servlet.http.*;

import com.icbt.adprogramming.labap.dao.AppointmentDAO;

import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/deleteappointment")
public class DeleteAppointmentController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests for deleting appointments
        String id = request.getParameter("id");
        AppointmentDAO appointmentDAO = new AppointmentDAO();
        appointmentDAO.deleteAppointment(id);
        response.sendRedirect("viewallappointments.jsp");
    }
	
	
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Handle POST requests for deleting appointments
	        String id = request.getParameter("id");
	        AppointmentDAO appointmentDAO = new AppointmentDAO();
	        appointmentDAO.deleteAppointment(id);
	        response.sendRedirect("viewallappointments.jsp");
	    }
	
}
