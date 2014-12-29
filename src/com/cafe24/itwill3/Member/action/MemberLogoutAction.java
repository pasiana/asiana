package com.cafe24.itwill3.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MemberLogoutAction");
		
		HttpSession session=request.getSession();
		session.invalidate();
		
		ActionForward forward=new ActionForward();
		forward.setPath("./asiana_member/Logout.jsp");
		forward.setRedirect(false);
		return forward;
	}
}