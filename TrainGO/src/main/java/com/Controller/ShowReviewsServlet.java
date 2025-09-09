package com.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ShowReviewsServlet")
public class ShowReviewsServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Review> rvList = dao.getAllReviews();
        request.setAttribute("rvs", rvList);
        RequestDispatcher rd = request.getRequestDispatcher("addreview.jsp");
        rd.forward(request, response);
    }
}
