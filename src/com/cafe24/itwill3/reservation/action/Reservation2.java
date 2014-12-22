package com.cafe24.itwill3.reservation.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.reservation.db.ReservationBean;
import com.cafe24.itwill3.reservation.db.ReservationDAO;

public class Reservation2 implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf8");
		
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		
		ReservationDAO rDao = new ReservationDAO();
		
		if(request.getParameter("arr_time")!= null) {
			ArrayList relist = rDao.getCityKey(lea_city, arr_city, "sin");
			request.setAttribute("relist", relist);
			ArrayList relist2 = rDao.getCityKey(arr_city, lea_city, "dou");
			request.setAttribute("relist2", relist2);
		} else {
			ArrayList relist = rDao.getCityKey(lea_city, arr_city, "sin");
			request.setAttribute("relist", relist);
		}
		ActionForward forward = new ActionForward();
		forward.setPath("reserve2.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
