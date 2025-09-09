package com.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ReviewDashboardServlet")
public class ReviewDashboardServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Review> rList = dao.getAllRelevantReviews();
        request.setAttribute("rv", rList); 
        RequestDispatcher rd = request.getRequestDispatcher("reviewUpdateDelete.jsp");
        rd.forward(request, response); 
    }
}

