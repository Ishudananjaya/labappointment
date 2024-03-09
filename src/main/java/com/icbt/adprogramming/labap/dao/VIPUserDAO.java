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
}
