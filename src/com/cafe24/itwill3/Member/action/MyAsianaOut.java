package com.cafe24.itwill3.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberBean;
import com.cafe24.itwill3.Member.db.MemberDAO;

public class MyAsianaOut implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MyAsianaOut");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		
		ActionForward forward=new ActionForward();
		if(member_id==null){
			forward.setPath("./AsianaLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		
		MemberDAO memberdao=new MemberDAO();
		MemberBean memberbean=memberdao.Member_Info(member_id);
		
		request.setAttribute("memberbean", memberbean);
		
		forward.setPath("./asiana_member/MyAsianaOut.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
