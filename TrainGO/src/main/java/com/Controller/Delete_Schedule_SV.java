package com.Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

public class Delete_Schedule_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String train_id = request.getParameter("Dtrain_id");
        String journey_id = request.getParameter("Djourney_id");

        boolean isDelete = DB_util_Schedule.Delete_Schedule(journey_id, train_id);

        if (isDelete) {
            response.sendRedirect("Read_Schedule_SV");

        } else {
            RequestDispatcher dis = request.getRequestDispatcher("err.jsp");
            dis.forward(request, response);
        }
	}

}
