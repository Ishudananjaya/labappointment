package com.icbt.adprogramming.labap.dao;

import com.icbt.adprogramming.labap.model.User;

public interface UserDAO {
    void addUser(User user);
    User getUserByEmail(String email);
}
