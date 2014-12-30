package com.cafe24.itwill3.Member.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;

public class ResListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ResListAction");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		
		ActionForward forward=new ActionForward();
		if(member_id==null || !member_id.equals("admin")){
			forward.setPath("./AsianaMain.me");
			forward.setRedirect(true);
			return forward;
		}
		
		MemberDAO memberdao=new MemberDAO();
		List MemberResList=memberdao.getMemberResList();
		
		request.setAttribute("MemberResList", MemberResList);
		
		forward.setPath("./asia_admin/Admin2.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
