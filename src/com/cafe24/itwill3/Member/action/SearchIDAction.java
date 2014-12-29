package com.cafe24.itwill3.Member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.Member.db.MemberBean;
import com.cafe24.itwill3.Member.db.MemberDAO;

public class SearchIDAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("SearchIDAction");
		request.setCharacterEncoding("utf-8");
		
		String Krname=request.getParameter("Krname");
		String birthday=request.getParameter("birthday");
		String email=request.getParameter("email");
		
		MemberDAO memberdao=new MemberDAO();
		MemberBean memberbean=memberdao.SearchID(Krname, birthday, email);
		
		if(memberbean==null){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('아이디를 찾을 수 없습니다');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		
		request.setAttribute("memberbean", memberbean);
		ActionForward forward=new ActionForward();
		forward.setPath("./asiana_member/ResultID.jsp");
		forward.setRedirect(false);
		return forward;
	}
}