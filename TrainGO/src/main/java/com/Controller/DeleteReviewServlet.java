package com.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteReviewServlet")
public class DeleteReviewServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
            int reviewid = Integer.parseInt(request.getParameter("reviewid"));
            dao.deleteReview(reviewid);
            System.out.println("Review deleted");
            response.sendRedirect("addreview.jsp");
        
    }
}
