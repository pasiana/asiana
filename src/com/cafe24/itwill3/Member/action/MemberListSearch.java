package com.cafe24.itwill3.Member.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;

public class MemberListSearch implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MemberListSearch");
		
		HttpSession session=request.getSession();
		ActionForward forward=new ActionForward();
		String member_id=(String)session.getAttribute("member_id");
		if(member_id==null || !member_id.equals("admin")){
			forward.setPath(".AsianaMain.me");
			forward.setRedirect(true);
			return forward;
		}
		
		request.setCharacterEncoding("utf-8");
		String list=request.getParameter("select");
		String content=request.getParameter("content");
		
		MemberDAO memberdao=new MemberDAO();
		List memberlist=memberdao.MemberSearch(list, content);
		
		request.setAttribute("memberlist", memberlist);
		forward.setPath("./asia_admin/Admin1Search.jsp");
		forward.setRedirect(false);
		return forward;
	}
}