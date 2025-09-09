package com.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String UserName = request.getParameter("Username");
        String PassWord = request.getParameter("password");
        
        if (dao.adminCheck(UserName, PassWord)) {
            request.getSession().setAttribute("adminUsername", UserName);
            System.out.println("Admin Login Success");
            response.sendRedirect("AdminDashboard.jsp");
        }else if(dao.gardCheck(UserName, PassWord)) {
            request.getSession().setAttribute("gardUsername", UserName);
            System.out.println("Gard Login Success");
            response.sendRedirect("Home.jsp");
        } else if (dao.passengerCheck(UserName, PassWord)) {
            request.getSession().setAttribute("username", UserName);
            request.getSession().setAttribute("password", PassWord);
            System.out.println("Passenger Login Success");
            response.sendRedirect("AfterHomepage.jsp");
        } else {
        	 System.out.println("Login Unsuccess");
            response.sendRedirect("Login.jsp?error=invalid");
        }
    }
}

