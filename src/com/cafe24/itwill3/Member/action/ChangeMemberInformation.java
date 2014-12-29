package com.cafe24.itwill3.Member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberBean;
import com.cafe24.itwill3.Member.db.MemberDAO;

public class ChangeMemberInformation implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("ChangeMemberInformation");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		
		request.setCharacterEncoding("utf-8");
		MemberBean memberbean=new MemberBean();
		memberbean.setMember_id(member_id);
		memberbean.setPost_code(request.getParameter("post_code"));
		memberbean.setAddress(request.getParameter("address"));
		memberbean.setTelephone(request.getParameter("telephone"));
		memberbean.setMobile(request.getParameter("mobile"));
		memberbean.setEmail(request.getParameter("email"));
		memberbean.setShare_info(request.getParameter("share_info"));
		
		MemberDAO memberdao=new MemberDAO();
	    memberdao.UpdateMember(memberbean);
	    
	    ActionForward forward=new ActionForward();
	    forward.setPath("./asiana_member/ChangeMemberInformation.jsp");
	    forward.setRedirect(false);
		return forward;
	}
}
