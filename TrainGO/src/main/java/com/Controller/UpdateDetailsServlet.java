package com.Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDetailsServlet")
public class UpdateDetailsServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int ticketId = Integer.parseInt(req.getParameter("ticketId"));
        int trainId = Integer.parseInt(req.getParameter("trainId"));
        String date = req.getParameter("date");
        String seatNumb = req.getParameter("seatNumb");
        String name = req.getParameter("name");
        String nic = req.getParameter("nic");
        String email = req.getParameter("email");
        String pnumber = req.getParameter("pnumber");

        Seat upSeat = new Seat(ticketId, trainId, seatNumb, date, name, nic, email, pnumber);
        boolean check = dao.updatedSeat(upSeat);
        
        if (check) {
            res.sendRedirect("searchTicket.jsp");
        } else {
        	res.getWriter().println("<script type='text/javascript'>");
            res.getWriter().println("alert('There is Error in your input.');");
            res.getWriter().println("location='searchTicket.jsp';");
            res.getWriter().println("</script>");
        }
    }
}
