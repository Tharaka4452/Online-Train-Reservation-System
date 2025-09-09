package com.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AdminDashboardServlet")
public class AdminDashboardServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminUsername = (String) request.getSession().getAttribute("adminUsername");
        
        if (adminUsername != null) {
            List<Passenger> pList = dao.getAllPassenger();
            request.setAttribute("pasen", pList);
            RequestDispatcher rd = request.getRequestDispatcher("PassengerDeleteDashboard.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("Login.jsp?error=unauthorized");
        }
    }
}

