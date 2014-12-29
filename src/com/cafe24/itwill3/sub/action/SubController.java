package com.cafe24.itwill3.sub.action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubController extends HttpServlet {
	private void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		ActionForward forward = null;
		String command = request.getRequestURI().substring(request.getContextPath().length());
		
		if(command.equals("/aircraft.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Aircraft_Information.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/bag.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Baggage.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/booking.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/BookingAirport.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/bookOn.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/BookOnLine.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/check.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Check_In.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/elec.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Electronics_Instructional.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/entry.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Entry_Procedures.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/suite.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/First_Suite.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/first.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/First.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/meals.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Meals.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/mobile.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/Mobile_Services.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/ticket.su")) {
			forward = new ActionForward();
			forward.setPath("./asia_sub/TicketInformation.jsp");
			forward.setRedirect(false);
		} 
		if(forward!=null){
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}
}
