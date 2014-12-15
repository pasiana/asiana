package com.cafe24.itwill3.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Reservation2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("예약 2번쨰 페이지");
		
		String res_sig_dou = request.getParameter("res_sig_dou");
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		String lea_time = request.getParameter("lea_time");
		int res_count = Integer.parseInt(request.getParameter("res_count"));
		if(res_sig_dou.equals("왕복")) {
			String arr_time = request.getParameter("arr_time");
		}
		
		return null;
	}
}
