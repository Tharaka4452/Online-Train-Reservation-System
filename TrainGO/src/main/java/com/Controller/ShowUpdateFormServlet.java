package com.Controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ShowUpdateFormServlet")
public class ShowUpdateFormServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        Passenger oldpassenger = dao.selectOldPassenger(id);
        request.setAttribute("ppnn", oldpassenger);
        
        RequestDispatcher rd = request.getRequestDispatcher("updateprofile.jsp");
        
        rd.forward(request, response);
    }
}