package com.cafe24.itwill3.Member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cafe24.itwill3.Member.db.MemberDAO;


public class MemberLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MemberLoginAction");
		
		int loginType=Integer.parseInt(request.getParameter("loginType"));
		String member_id=request.getParameter("member_id");
		/*String passwd=request.getParameter("passwd");
		
		
		int check=memberdao.MemberLogin(loginType, member_id, passwd);
		
		if(check==0){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('아이디 또는 비밀번호 오류입니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
			return null;
		}else{*/
		MemberDAO memberdao=new MemberDAO();
			if(loginType==1){
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