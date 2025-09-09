package com.Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddDetailsServlet")
public class AddDetailsServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int trainId = Integer.parseInt(req.getParameter("trainId"));
        String seatNumb = req.getParameter("seatNumb");
        String date = req.getParameter("date");
        String name = req.getParameter("name");
        String nic = req.getParameter("nic");
        String email = req.getParameter("email");
        String pnumber = req.getParameter("pnumber");

        Seat se = new Seat(0, trainId, seatNumb, date, name, nic, email, pnumber);
        dao.addpDetails(se);
        res.sendRedirect("Homepage.jsp");
    }
}
