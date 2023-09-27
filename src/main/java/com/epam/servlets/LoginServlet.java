package com.epam.servlets;

import com.epam.manager.EmployeeManager;
import com.epam.manager.LoginManager;
import com.epam.model.UserRegister;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {
    private LoginManager loginManager;
    EmployeeManager employeeManager = new EmployeeManager();
    UserRegister userRegister = new UserRegister();

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        userRegister.setUsername(username);
        userRegister.setPassword(password);
//
//    if (employeeManager.getByUsernameAndPassword(userRegister)) {
//        HttpSession session = request.getSession();
//        session.setAttribute("username", username);
//        session.setAttribute("password", password);
//        response.sendRedirect("loginsuccess.jsp");
//    } else {
//        response.sendRedirect("/");
//    }
    if (employeeManager.getByUsernameAndPassword(userRegister)) {
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        session.setAttribute("password", password);
        List<UserRegister> allUser = employeeManager.getAll();
        for (UserRegister userRegister1 : allUser) {
            if (username.equals(userRegister1.getUsername())) {
                request.getSession().setAttribute("user", userRegister1);
                break;
            }
        }
        response.sendRedirect("loginsuccess.jsp");
    } else {
        response.sendRedirect("loginrefresh.jsp");
    }
}
}
