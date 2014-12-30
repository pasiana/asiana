package com.cafe24.itwill3.reservation.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.reservation.db.Reserva5_Bean;
import com.cafe24.itwill3.reservation.db.ReservationDAO;

public class Reservation5 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("예약 5번째 페이지");
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		
		String res_sig_dou = request.getParameter("res_sig_dou");
		
		if(res_sig_dou.equals("왕복")){
			Reserva5_Bean reserva5_Bean = new Reserva5_Bean();
			reserva5_Bean.setRes_sig_dou(request.getParameter("res_sig_dou")); //편도 왕복
			reserva5_Bean.setRes_count(Integer.parseInt(request.getParameter("res_count"))); //사람수
			reserva5_Bean.setLea_city(request.getParameter("lea_city")); //출발도시 가는날
			reserva5_Bean.setArr_city(request.getParameter("arr_city")); //도착도시 가는날
			reserva5_Bean.setLea_time("2015/"+request.getParameter("lea_day")+" "+request.getParameter("lea_time")); //가는날 출발시간 (편도)
			reserva5_Bean.setArr_time("2015/"+request.getParameter("lea_day")+" "+request.getParameter("lea_time_b")); //가는날 도착시간 (편도)
			
			reserva5_Bean.setB_lea_city(request.getParameter("arr_city")); //출발도시 오는날
			reserva5_Bean.setB_arr_city(request.getParameter("lea_city")); //도착도시 오는날
			reserva5_Bean.setB_lea_time("2015/"+request.getParameter("arr_day")+" "+request.getParameter("arr_time")); //오는날 출발시간
			reserva5_Bean.setB_arr_time("2015/"+request.getParameter("arr_day")+" "+request.getParameter("arr_time_b")); //오는날 도착시간
			reserva5_Bean.setRes_date(new Timestamp(System.currentTimeMillis())); //날짜
			
			ReservationDAO reservationDAO = new ReservationDAO();
			reservationDAO.dou_reserve(member_id ,reserva5_Bean);
			
		}else{ //편도
			Reserva5_Bean reserva5_Bean = new Reserva5_Bean();
			reserva5_Bean.setMember_id(member_id);
			reserva5_Bean.setRes_sig_dou(request.getParameter("res_sig_dou")); //편도 왕복
			reserva5_Bean.setRes_count(Integer.parseInt(request.getParameter("res_count"))); //사람수
			reserva5_Bean.setLea_city(request.getParameter("lea_city")); //출발도시
			reserva5_Bean.setArr_city(request.getParameter("arr_city")); //도착도시
			reserva5_Bean.setLea_time("2015/"+request.getParameter("lea_day")+" "+request.getParameter("lea_time")); //가는날 출발시간 (편도)
			reserva5_Bean.setArr_time("2015/"+request.getParameter("lea_day")+" "+request.getParameter("lea_time_b")); //가는날 도착시간 (편도)
			reserva5_Bean.setRes_date(new Timestamp(System.currentTimeMillis())); //날짜
			
			ReservationDAO reservationDAO = new ReservationDAO();
			reservationDAO.sig_reserve(reserva5_Bean);
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath("./asia_sub/reserve5.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
