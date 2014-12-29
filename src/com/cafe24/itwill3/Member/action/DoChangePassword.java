package com.cafe24.itwill3.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;

public class DoChangePassword implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("DoChangePassword");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		String passwd=request.getParameter("newpasswd");
		
		MemberDAO memberdao=new MemberDAO();
		memberdao.UpdatePassword(member_id, passwd);
		
		ActionForward forward=new ActionForward();
		forward.setPath("./asiana_member/DoChangePassword.jsp");
		forward.setRedirect(false);
		return forward;
	}
}