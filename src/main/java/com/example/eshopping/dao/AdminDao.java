package com.example.eshopping.dao;


import com.example.eshopping.model.Admin;
import com.example.eshopping.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdminDao {
    private Connection connection;

    public AdminDao(Connection connection) {
        this.connection = ConnectionUtil.getConnection();
    }

    public void addAdmin(Admin admin) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "insert into newAdmin(fullName,email,password,adminToken) values (?,?,?,?)");
            preparedStatement.setString(1, admin.getFullName());
            preparedStatement.setString(2, admin.getEmail());
            preparedStatement.setString(3, admin.getPassword());
            preparedStatement.setString(4, admin.getAdminToken());

            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}