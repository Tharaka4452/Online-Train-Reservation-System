package com.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ValidateUsernameServlet")
public class ValidateUsernameServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");

        if (dao.validateCheck(userid)) {
            List<Review> userReviews = dao.getReviewsByUserId(userid);
            request.setAttribute("rv", userReviews);
            RequestDispatcher rd = request.getRequestDispatcher("reviewUpdateDelete.jsp");
            rd.forward(request, response);
            System.out.println("Login success");
        } else {
            System.out.println("Wrong id");
            response.sendRedirect("updateaccess.jsp");
        }
    }
}
