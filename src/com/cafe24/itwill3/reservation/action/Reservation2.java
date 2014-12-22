package com.cafe24.itwill3.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.reservation.db.ReservationBean;
import com.cafe24.itwill3.reservation.db.ReservationDAO;

public class Reservation2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("예약 2번쨰 페이지");
		request.setCharacterEncoding("utf8");
		
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		
		ReservationDAO rDao = new ReservationDAO();
		rDao.getCityKey(lea_city, arr_city);
		return null;
	}
}
