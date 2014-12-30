package com.cafe24.itwill3.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Reservation3 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("예약 3번째 페이지");
		
		//편도일때
		String res_sig_dou = request.getParameter("res_sig_dou"); //편도 왕복
		String lea_city = request.getParameter("lea_city"); //출발공항
		String arr_city = request.getParameter("arr_city"); //도착공항
		String lea_time = request.getParameter("lea_time"); // 출발시간
		String lea_time_b = request.getParameter("lea_time_b"); // 도착시간
		String lea_day = request.getParameter("lea_day"); //가는날짜
		int charge =Integer.parseInt(request.getParameter("charge")); //운임요금
		int res_count = Integer.parseInt(request.getParameter("res_count")); //사람수
		
		if(res_sig_dou.equals("왕복")) { //왕복일때 
			String arr_time = request.getParameter("arr_time");
			request.setAttribute("arr_time", arr_time); //출발시간
			String arr_time_b = request.getParameter("arr_time_b");
			request.setAttribute("arr_time_b", arr_time_b); //도착시간
			String arr_day = request.getParameter("arr_day");
			request.setAttribute("arr_day",arr_day); //오는날짜
			String arr_charge = request.getParameter("arr_charge"); //오는요금
			request.setAttribute("arr_charge", arr_charge);
			String lea_charge = request.getParameter("lea_charge"); //가는요금
			request.setAttribute("lea_charge", lea_charge);
		}

		request.setAttribute("lea_city", lea_city);
		request.setAttribute("arr_city", arr_city);
		request.setAttribute("lea_time", lea_time);
		request.setAttribute("lea_time_b", lea_time_b);
		request.setAttribute("res_count", res_count);
		request.setAttribute("res_sig_dou", res_sig_dou);
		request.setAttribute("lea_day", lea_day);
		request.setAttribute("charge", charge);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./reserve3.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
