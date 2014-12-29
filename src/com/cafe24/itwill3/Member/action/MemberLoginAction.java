package com.cafe24.itwill3.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;


public class MemberLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MemberLoginAction");
		
		String member_id=request.getParameter("member_id");
		int loginType=Integer.parseInt(request.getParameter("loginType"));
		
		if(loginType==1){
			MemberDAO memberdao=new MemberDAO();
			member_id=memberdao.getMember_id(member_id);
		}
		
		HttpSession session=request.getSession();
		session.setAttribute("member_id", member_id);
		
		ActionForward forward=new ActionForward();
		forward.setPath("./AsianaMain.me");
		forward.setRedirect(true);
		return forward;
	}
}