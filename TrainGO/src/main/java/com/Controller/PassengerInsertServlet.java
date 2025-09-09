package com.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PassengerInsertServlet")
public class PassengerInsertServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        String password = request.getParameter("Password");
        
        Passenger hs = new Passenger(fname, lname, username, email, phoneNumber, address, password);
        dao.addNewPassenger(hs);
        
        response.sendRedirect("Homepage.jsp");
    }
}

