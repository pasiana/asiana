package com.cafe24.itwill3.reservation.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ReservationController extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 주소 가져오기
		String command = request.getRequestURI().substring(request.getContextPath().length());
		ActionForward forward=null;
		Action action=null;
		if(command.equals("/asia_sub/reserve.re")) {
			forward = new ActionForward();
			forward.setPath("./reserve.jsp");
			forward.setRedirect(false);
		}
		else if(command.equals("/asia_sub/reserve2.re")) {
			action = new Reservation2();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/asia_sub/reserve3.re")) {
			action = new Reservation3();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/asia_sub/reserve4.re")) {
			action = new Reservation4();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//이동
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
