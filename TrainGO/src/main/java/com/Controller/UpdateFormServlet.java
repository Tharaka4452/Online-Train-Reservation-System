package com.Controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateFormServlet")
public class UpdateFormServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
            int reviewid = Integer.parseInt(request.getParameter("reviewid"));
            Review oldReview = dao.selectOldReview(reviewid);
            request.setAttribute("pt", oldReview);
            RequestDispatcher rd = request.getRequestDispatcher("updateReviewForm.jsp");
            rd.forward(request, response);
         
    }
}
