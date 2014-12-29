package com.cafe24.itwill3.Member.action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.Member.db.MemberBean;
import com.cafe24.itwill3.Member.db.MemberDAO;

public class MemberJoinAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("MemberJoinAction");
		request.setCharacterEncoding("utf-8");
		
		MemberBean memberbean=new MemberBean();
		memberbean.setMember_id(request.getParameter("member_id"));
		memberbean.setPasswd(request.getParameter("passwd"));
		memberbean.setKrname(request.getParameter("Krname"));
		memberbean.setLast_name(request.getParameter("last_name"));
		memberbean.setFirst_name(request.getParameter("first_name"));
		memberbean.setBirthday(request.getParameter("birthday"));
		memberbean.setGender(request.getParameter("gender"));
		memberbean.setPost_code(request.getParameter("post_code"));
		memberbean.setAddress(request.getParameter("address"));
		memberbean.setTelephone(request.getParameter("telephone"));
		memberbean.setMobile(request.getParameter("mobile"));
		memberbean.setEmail(request.getParameter("email"));
		memberbean.setShare_info(request.getParameter("share_info"));
		memberbean.setReg_date(new Timestamp(System.currentTimeMillis()));
		
		MemberDAO memberdao=new MemberDAO();
		memberdao.insertMember(memberbean);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<script>");
		out.println("alert('회원가입이 정상적으로 이루어졌습니다.');");
		out.println("location.href='./AsianaLogin.me'");
		out.println("</script>");
		out.close();
		return null;
	}
}