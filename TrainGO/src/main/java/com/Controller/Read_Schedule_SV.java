package com.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// Maps the servlet to the URL pattern "/listJourneys"
@WebServlet("/listJourneys")
public class Read_Schedule_SV extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Instance of the data access object (DAO) for schedule operations
    private DB_util_Schedule journeyDAO = new DB_util_Schedule();

    // Handles GET requests
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            // Fetch data from DAO
            List<Schedule_list> journeys = journeyDAO.getAllJourneys();
            // Set the retrieved data as an attribute for the JSP
            request.setAttribute("journeys", journeys);
            // Forward the request and response to the Home.jsp for display
            RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}
