package com.Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDetailsServlet")
public class DeleteDetailsServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int ticketId = Integer.parseInt(req.getParameter("ticketId"));
        dao.deletDetails(ticketId);
        res.sendRedirect("ticketDetails.jsp");
    }
}
