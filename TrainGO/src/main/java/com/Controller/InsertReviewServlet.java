package com.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/InsertReviewServlet")
public class InsertReviewServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String trainnumber = request.getParameter("trainnumber");
        String rating = request.getParameter("rating");
        String review = request.getParameter("review");
        
        Review rv = new Review(userid, trainnumber, rating, review);
        dao.addNewReview(rv);
        System.out.println("Database updated");
        
        response.sendRedirect("addreview.jsp");
    }
}

