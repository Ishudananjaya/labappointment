package com.icbt.adprogramming.lapap.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icbt.adprogramming.labap.dao.UserDAO;
import com.icbt.adprogramming.labap.dao.UserDAOImpl;
import com.icbt.adprogramming.labap.dao.VIPUserDAO;
import com.icbt.adprogramming.labap.model.VIPUser;

@WebServlet("/registerVIPUser")
public class VIPUserController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private VIPUserDAO userDAO;
		    
	    

	    public void init() {
	        
			userDAO = new VIPUserDAO();
	    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String category = request.getParameter("category");

        VIPUser user = new VIPUser();
        user.setEmail(email);
        user.setPassword(password);
        user.setUserCategory(category);

        userDAO.registerVIPUser(user);

        // Redirect to a confirmation page or any other page
        response.sendRedirect("registration_confirmation.jsp");
    }
}
