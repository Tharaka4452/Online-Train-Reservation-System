package com.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PassengerUpdateServlet")
public class PassengerUpdateServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("pid"));
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");
        String address = request.getParameter("address");
        String password = request.getParameter("Password");
        
        Passenger updatedpassenger = new Passenger(id, fname, lname, username, email, phoneNumber, address, password);
        boolean check = dao.updateOldPassenger(updatedpassenger);
        
        if (check) {
            response.sendRedirect("PassengerUserProfile");
        } else {
            System.out.println("failed to update");
        }
    }
}

