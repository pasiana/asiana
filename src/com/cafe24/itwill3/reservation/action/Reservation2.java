package com.cafe24.itwill3.reservation.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.reservation.db.ReservationBean;
import com.cafe24.itwill3.reservation.db.ReservationDAO;

public class Reservation2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("예약 2번째 페이지");
		
		String res_sig_dou = request.getParameter("res_sig_dou");
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		String lea_time = request.getParameter("lea_time");
		int res_count = Integer.parseInt(request.getParameter("res_count"));
		if(res_sig_dou.equals("왕복")) {
			String arr_time = request.getParameter("arr_time");
			request.setAttribute("arr_time", arr_time);
		}
		
		ReservationDAO reservationDAO = new ReservationDAO();
		
		//편도
		List<ReservationBean> relist = null;
		List<ReservationBean> leaday = null;

		relist=reservationDAO.leave(lea_city, arr_city, lea_time);
		leaday=reservationDAO.leaDay(lea_city, arr_city, lea_time);
		
		//왕복
		List<ReservationBean> arrlist=null;
		List<ReservationBean> arrday = null;
		arrlist=reservationDAO.arrive(lea_city, arr_city);
		arrday=reservationDAO.arrDay(lea_city, arr_city);
		
		request.setAttribute("relist", relist);
		request.setAttribute("lea_city", lea_city);
		request.setAttribute("arr_city", arr_city);
		request.setAttribute("lea_time", lea_time);
		request.setAttribute("res_count", res_count);
		request.setAttribute("res_sig_dou", res_sig_dou);
		request.setAttribute("leaday", leaday);
		request.setAttribute("arrlist",arrlist);
		request.setAttribute("arrday", arrday);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./asia_sub/reserve2.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
