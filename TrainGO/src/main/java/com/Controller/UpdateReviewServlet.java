package com.Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateReviewServlet")
public class UpdateReviewServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reviewidStr = request.getParameter("reviewid");
        if (reviewidStr != null && !reviewidStr.isEmpty()) {
            int reviewid = Integer.parseInt(reviewidStr);
            String userid = request.getParameter("userid");
            String trainnumber = request.getParameter("trainnumber");
            String rating = request.getParameter("rating");
            String review = request.getParameter("review");

            Review updatedReview = new Review(reviewid, userid, trainnumber, rating, review);
            boolean check = dao.updateOldReview(updatedReview);

            if (check) {
                response.sendRedirect("addreview.jsp");
            } else {
                System.out.println("Failed to update the review");
            }
        } else {
            System.out.println("Review ID is missing or invalid");
            response.sendRedirect("errorPage.jsp");
        }
    }
}
