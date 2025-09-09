package com.Controller;

import jakarta.servlet.RequestDispatcher; // For forwarding requests to another resource
import jakarta.servlet.ServletException; // For servlet exceptions
import jakarta.servlet.http.HttpServlet; // Base class for servlets
import jakarta.servlet.http.HttpServletRequest; // Represents a request from a client
import jakarta.servlet.http.HttpServletResponse; // Represents a response to a client

import java.io.IOException; // For handling I/O exceptions

public class Update_Schedule_SV extends HttpServlet {
    private static final long serialVersionUID = 1L; // Version control for serialization

    // Handles POST requests for updating a schedule
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Retrieving parameters from the HTTP request
        String train_id = request.getParameter("Utrain_id");
        String train_name = request.getParameter("Utrain_name");
        String journey_id = request.getParameter("Ujourney_id");
        String journey_name = request.getParameter("Ujourney_name");
        String start = request.getParameter("Ustart");
        String start_loc = request.getParameter("Ustart_loc");
        String end_loc = request.getParameter("Uend_loc");
        String arrival = request.getParameter("Uarrival");
        String capacity = request.getParameter("Ucapacity");
        String three = request.getParameter("Uthree");
        String one = request.getParameter("Uone");

        // Call to the utility class method to update a schedule
        boolean isUpdate = DB_util_Schedule.Update_Schedule(
                journey_id, 
                journey_name, 
                train_id, 
                train_name, 
                start, 
                start_loc, 
                end_loc, 
                arrival, 
                capacity, 
                three, 
                one
        );

        // Check if the schedule update was successful
        if (isUpdate) {
            // Redirecting to the Read_Schedule_SV servlet if successful
            response.sendRedirect("Read_Schedule_SV");
        } else {
            // Forwarding to the error page if the update fails
            RequestDispatcher dis = request.getRequestDispatcher("err.jsp");
            dis.forward(request, response);
        }
    }
}
