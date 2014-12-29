package com.cafe24.itwill3.Member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.Member.db.MemberBean;
import com.cafe24.itwill3.Member.db.MemberDAO;

public class SearchPWAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("SearchPWAction");
		request.setCharacterEncoding("utf-8");
		char[] Character=new char[]{
				'0','1','2','3','4','5','6','7','8','9'
			   ,'A','B','C','D','E','F','G','H','I','J','K','L','M'
			   ,'N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
			   ,'a','b','c','d','e','f','g','h','i','j','k','l','m'
			   ,'n','o','p','q','r','s','t','u','v','w','x','y','z'
			   ,'!','@','#','$','%','^','&','*','(',')','_','-'
		};
		
		int idx=0;
		String passwd="";
		
		for(int i=1;i<=8;i++){
			idx=(int)(Math.random()*Character.length);
			passwd+=Character[idx];
		}
		
		String member_id=request.getParameter("member_id");
		String Krname=request.getParameter("Krname");
		String birthday=request.getParameter("birthday");
		String email=request.getParameter("email");
		
		MemberDAO memberdao=new MemberDAO();
		int check=memberdao.SearchPW(member_id, passwd, Krname, birthday, email);
		
		if(check==0){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('입력하신 정보와 일치하는 회원정보가 없습니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
			return null;
		}
		
		MemberBean memberbean=memberdao.Member_Info(member_id);
		request.setAttribute("memberbean", memberbean);
		ActionForward forward=new ActionForward();
		forward.setPath("./asiana_member/ResultPW.jsp");
		forward.setRedirect(false);
		return forward;
	}
}