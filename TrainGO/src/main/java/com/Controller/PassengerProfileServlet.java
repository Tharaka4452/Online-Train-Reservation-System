package com.Controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/PassengerProfileServlet")
public class PassengerProfileServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String UserName = (String) request.getSession().getAttribute("username");
        String PassWord = (String) request.getSession().getAttribute("password");
        
        List<Passenger> Oneplist = dao.getOnePassenger(UserName, PassWord);
        
        if (Oneplist != null && !Oneplist.isEmpty()) {
            request.setAttribute("ppss", Oneplist);
            RequestDispatcher rd = request.getRequestDispatcher("Userprofile.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("Login.jsp?error=invalid");
        }
    }
}

