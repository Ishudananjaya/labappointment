package com.icbt.adprogramming.lapap.controller;

import javax.servlet.*;
import javax.servlet.http.*;

import com.icbt.adprogramming.labap.dao.AppointmentDAO;
import com.icbt.adprogramming.labap.model.Appointment;

import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/updateappointment")
public class UpdateAppointmentController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests for updating appointments
        String id = request.getParameter("id");
        AppointmentDAO appointmentDAO = new AppointmentDAO();
        Appointment appointment = appointmentDAO.getAppointmentById(id);
        request.setAttribute("appointment", appointment);
        RequestDispatcher dispatcher = request.getRequestDispatcher("editappointment.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle POST requests for updating appointments
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String testName = request.getParameter("testname");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        Appointment appointment = new Appointment(id, name, testName, date, time);

        AppointmentDAO appointmentDAO = new AppointmentDAO();
        appointmentDAO.updateAppointment(appointment);

        response.sendRedirect("viewallappointments.jsp");
    }
}
