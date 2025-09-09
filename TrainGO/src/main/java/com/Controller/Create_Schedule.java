package com.Controller;

import jakarta.servlet.RequestDispatcher; // For forwarding requests to another resource
import jakarta.servlet.ServletException; // For servlet exceptions
import jakarta.servlet.http.HttpServlet; // Base class for servlets
import jakarta.servlet.http.HttpServletRequest; // Represents a request from a client
import jakarta.servlet.http.HttpServletResponse; // Represents a response to a client

import java.io.IOException; // For handling I/O exceptions

public class Create_Schedule extends HttpServlet {
    private static final long serialVersionUID = 1L; // Version control for serialization

    // Handles POST requests for creating a schedule
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Retrieving parameters from the HTTP request
        String journey_name = request.getParameter("journey_name");
        String train_id = request.getParameter("train_id");
        String train_name = request.getParameter("train_name");
        String start = request.getParameter("start");
        String start_location = request.getParameter("start_loc");
        String end_location = request.getParameter("end_loc");
        String arrival = request.getParameter("arrival");
        String capacity = request.getParameter("capacity");
        String three = request.getParameter("three");
        String one = request.getParameter("one");

        // Call to the utility class method to create a schedule
        boolean isCreate = DB_util_Schedule.Create_Schedule(
                journey_name, 
                train_id, 
                train_name, 
                start, 
                start_location, 
                end_location, 
                arrival, 
                capacity, 
                three, 
                one
        );

        // Check if the schedule creation was successful
        if (isCreate) {
            // Redirecting to the Read_Schedule_SV servlet if successful
            response.sendRedirect("Read_Schedule_SV");
        } else {
            // Forwarding to the error page if creation fails
            RequestDispatcher dis = request.getRequestDispatcher("err.jsp");
            dis.forward(request, response);
        }
    }
}
