package com.Controller;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SearchTicketServlet")
public class SearchTicketServlet extends HttpServlet {
    
    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String ticketId = req.getParameter("ticketId");
        String nic = req.getParameter("nic");

        if (dao.searchTicket(ticketId, nic)) {
            List<Seat> seat = dao.showTicket(ticketId, nic);
            req.setAttribute("seat", seat);
            RequestDispatcher re = req.getRequestDispatcher("ticketDetails.jsp");
            re.forward(req, res);
        } else {
            res.getWriter().println("<script type='text/javascript'>");
            res.getWriter().println("alert('There is no reservation for that Ticket ID and NIC Number');");
            res.getWriter().println("location='searchTicket.jsp';");
            res.getWriter().println("</script>");
        }
    }
}
