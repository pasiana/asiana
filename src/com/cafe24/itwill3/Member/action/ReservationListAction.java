package com.cafe24.itwill3.Member.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;
import com.cafe24.itwill3.reservation.db.Reserva5_Bean;

public class ReservationListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ReservationList");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		ActionForward forward=new ActionForward();
		if(member_id==null){
			forward.setPath("./AsianaLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		
		MemberDAO memberdao=new MemberDAO();
		List ReservationList=memberdao.getReservationList(member_id);
		
		request.setAttribute("ReservationList", ReservationList);
		
		forward.setPath("./asiana_member/ReservationList.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
