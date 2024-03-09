package com.icbt.adprogramming.lapap.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.adprogramming.labap.dao.UserDAO;
import com.icbt.adprogramming.labap.dao.UserDAOImpl;
import com.icbt.adprogramming.labap.model.User;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAOImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String address = request.getParameter("address");
        String password = request.getParameter("password");

        User newUser = new User(name, email, contact, address, password);
        userDAO.addUser(newUser);

        response.sendRedirect("registration_success.jsp");
    }
}
