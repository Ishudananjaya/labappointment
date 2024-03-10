package com.icbt.adprogramming.labap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.icbt.adprogramming.labap.model.VIPUser;


public class VIPUserDAO {
    private Connection connection;

    public VIPUserDAO(Connection connection) {
        this.connection = connection;
    }

    public VIPUserDAO() {
		// TODO Auto-generated constructor stub
	}

	public VIPUser getUserByEmailAndPassword(String email, String password) throws SQLException {
        String query = "SELECT * FROM vipuser WHERE email = ? AND password = ?";
        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, email);
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    VIPUser user = new VIPUser();
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    user.setUserCategory(resultSet.getString("category"));
                    return user;
                }
            }
        }
        return null;
    }
    
    public void registerVIPUser(VIPUser user) {
        try {
            String query = "INSERT INTO vipuser (email, password, category) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getUserCategory());

            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
