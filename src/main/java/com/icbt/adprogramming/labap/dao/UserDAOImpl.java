package com.icbt.adprogramming.labap.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import com.icbt.adprogramming.labap.model.User;
import com.mysql.cj.xdevapi.Statement;


public class UserDAOImpl implements UserDAO {
    private Connection connection;

    public UserDAOImpl() {
        // Initialize database connection
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/testdb"; // Replace 'mydatabase' with your database name
            String username = "root"; // Replace 'username' with your database username
            String password = "@#En9500gt"; // Replace 'password' with your database password
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addUser(User user) {
        try {
            String query = "INSERT INTO users (name, email, contact, address, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getContact());
            preparedStatement.setString(4, user.getAddress());
            preparedStatement.setString(5, user.getPassword());
            preparedStatement.executeUpdate();
            
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int userId = generatedKeys.getInt(1);
                user.setId(userId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    @Override
    public User getUserByEmail(String email) {
        try {
            String query = "SELECT * FROM users WHERE email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String contact = resultSet.getString("contact");
                String address = resultSet.getString("address");
                String password = resultSet.getString("password");
                return new User(name, email, contact, address, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Close database connection
    public void closeConnection() {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
