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
		
		if(command.equals("/asia_sub/aircraft.su")) {
			forward = new ActionForward();
			forward.setPath("./Aircraft_Information.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/bag.su")) {
			forward = new ActionForward();
			forward.setPath("./Baggage.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/booking.su")) {
			forward = new ActionForward();
			forward.setPath("./BookingAirport.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/bookOn.su")) {
			forward = new ActionForward();
			forward.setPath("./BookOnLine.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/check.su")) {
			forward = new ActionForward();
			forward.setPath("./Check_In.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/elec.su")) {
			forward = new ActionForward();
			forward.setPath("./Electronics_Instructional.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/entry.su")) {
			forward = new ActionForward();
			forward.setPath("./Entry_Procedures.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/suite.su")) {
			forward = new ActionForward();
			forward.setPath("./First_Suite.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/first.su")) {
			forward = new ActionForward();
			forward.setPath("./First.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/meals.su")) {
			forward = new ActionForward();
			forward.setPath("./Meals.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/mobile.su")) {
			forward = new ActionForward();
			forward.setPath("./Mobile_Services.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/asia_sub/ticket.su")) {
			forward = new ActionForward();
			forward.setPath("./TicketInformation.jsp");
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
