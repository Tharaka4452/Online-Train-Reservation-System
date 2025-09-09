package com.Controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SearchTrainServlet")
public class SearchTrainServlet extends HttpServlet {

    TrainDAO dao = new TrainDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String start_Location = req.getParameter("start_Location");
        String end_Location = req.getParameter("end_Location");
        String date = req.getParameter("date");
        int ava1seat = Integer.parseInt(req.getParameter("ava1seat"));
        int ava2seat = Integer.parseInt(req.getParameter("ava2seat"));
        int ava3seat = Integer.parseInt(req.getParameter("ava3seat"));

        if (dao.searchTrain(start_Location, end_Location)) {
            Trainjourneyscheduling trainlist = dao.showTrain(start_Location, end_Location, date, ava1seat, ava2seat, ava3seat);
            req.setAttribute("trainlist", trainlist);
            RequestDispatcher re = req.getRequestDispatcher("trainSelect.jsp");
            re.forward(req, res);
        } else {
            res.getWriter().println("<script type='text/javascript'>");
            res.getWriter().println("alert('There is no Train for that options.');");
            res.getWriter().println("location='reservation.jsp';");
            res.getWriter().println("</script>");
        }
    }
}
