package com.icbt.adprogramming.lapap.controller;

import com.icbt.adprogramming.labap.dao.AppointmentDAO;
import com.icbt.adprogramming.labap.model.Appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EditAppointmentController")
public class EditAppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AppointmentDAO appointmentDAO;

    public void init() {
        setAppointmentDAO(new AppointmentDAO());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle POST requests
        String action = request.getParameter("action");
        if (action != null && action.equals("update")) {
            // Update appointment action
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String testName = request.getParameter("testname");
            String date = request.getParameter("date");
            String time = request.getParameter("time");

            Appointment appointment = new Appointment(id, name, testName, date, time);

            AppointmentDAO appointmentDAO = new AppointmentDAO();
            appointmentDAO.updateAppointment(appointment);

            response.sendRedirect("admindashboard.jsp"); // Redirect to viewmyappointments.jsp after update
        } else {
           
        }
    }

	public AppointmentDAO getAppointmentDAO() {
		return appointmentDAO;
	}

	public void setAppointmentDAO(AppointmentDAO appointmentDAO) {
		this.appointmentDAO = appointmentDAO;
	}

}
