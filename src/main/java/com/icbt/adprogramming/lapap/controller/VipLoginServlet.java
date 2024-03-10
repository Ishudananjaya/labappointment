package com.icbt.adprogramming.lapap.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icbt.adprogramming.labap.dao.VIPUserDAO;
import com.icbt.adprogramming.labap.model.VIPUser;

@WebServlet("/viplogin")
public class VipLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Database connection details
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/testdb";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "@#En9500gt";
    private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName(DRIVER_CLASS);
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            VIPUserDAO userDao = new VIPUserDAO(connection);
            VIPUser user = userDao.getUserByEmailAndPassword(email, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                if (user.getUserCategory().equals("Manager")) {
                    response.sendRedirect("managerdashboard.jsp");
                } else if (user.getUserCategory().equals("Admin")) {
                    response.sendRedirect("admindashboard.jsp");
                } else {
                	response.sendRedirect("index.jsp.jsp");
                }
            } else {
                response.sendRedirect("viplogin.jsp"); // Redirect back to login page if credentials are invalid
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle exception properly in production
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward GET requests to your login page
        request.getRequestDispatcher("viplogin.jsp").forward(request, response);
    }

}


