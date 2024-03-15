package com.example.eshopping.controller;


import com.example.eshopping.dao.UserDao;
import com.example.eshopping.model.User;
import com.example.eshopping.util.ConnectionUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "users", value = "/signup")
public class UserController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User newUser = new User(firstName,lastName,email,password);
        UserDao userDao = new UserDao(ConnectionUtil.getConnection());
        userDao.addUser(newUser);

        response.sendRedirect("login.jsp");
    }
}
