package com.Controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditDetailsServlet")
public class EditDetailsServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int ticketId = Integer.parseInt(req.getParameter("ticketId"));
        
        Seat oldSeat = dao.selectOldSeat(ticketId);
        RequestDispatcher re = req.getRequestDispatcher("editTicket.jsp");
        req.setAttribute("seat", oldSeat);
        re.forward(req, res);
    }
}
