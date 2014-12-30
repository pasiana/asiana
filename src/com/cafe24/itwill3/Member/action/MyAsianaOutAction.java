package com.cafe24.itwill3.Member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;

public class MyAsianaOutAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MyAsianaOutAction");
		
		HttpSession session=request.getSession();
		String member_id=(String)session.getAttribute("member_id");
		
		int loginType=0;
		String passwd=request.getParameter("passwd");
		
		MemberDAO memberdao=new MemberDAO();
		int check=memberdao.MemberLogin(loginType, member_id, passwd);
		
		if(check==0){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
			return null;
		}else{
			memberdao.DeleteMember(member_id);
			
			session.invalidate();
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('회원탈퇴가 정상적으로 이루어졌습니다.');");
			out.println("location.href=('./AsianaMain.me')");
			out.println("</script>");
			out.close();
			return null;
		}
	}
}