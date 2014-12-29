package com.cafe24.itwill3.Member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberFrontController extends HttpServlet{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		
		ActionForward forward=null;
		Action action=null;
		
		//회원가입
		if(command.equals("/AsianaMemberJoin.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/join_input.jsp");
			forward.setRedirect(false);
		}
		//이용약관 동의
		else if(command.equals("/AsianaCheckRegistered.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/CheckRegistered.jsp");
			forward.setRedirect(false);
		}
		//회원가입 액션
		else if(command.equals("/MemberJoinAction.me")){
			action=new MemberJoinAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//메인화면
		else if(command.equals("/AsianaMain.me")){
			forward=new ActionForward();
			forward.setPath("./asia_main/main.jsp");
			forward.setRedirect(false);
		}
		//로그인
		else if(command.equals("/AsianaLogin.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/login.jsp");
			forward.setRedirect(false);
		}
		//로그인 액션
		else if(command.equals("/MemberLoginAction.me")){
			action=new MemberLoginAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//로그아웃
		else if(command.equals("/AsianaLogout.me")){
			action=new MemberLogoutAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//아이디 찾기
		else if(command.equals("/SearchID.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/SearchID.jsp");
			forward.setRedirect(false);
		}
		//아이디 찾기 결과
		else if(command.equals("/ResultID.me")){
			action=new SearchIDAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//비밀번호 찾기
		else if(command.equals("/SearchPW.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/SearchPW.jsp");
			forward.setRedirect(false);
		}
		//비밀번호 찾기 결과
		else if(command.equals("/ResultPW.me")){
			action=new SearchPWAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//마이아시아나 메인
		else if(command.equals("/MyAsiana.me")){
			action=new MyAsianaAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//항공권 예약 현황
		else if(command.equals("/ReservationList.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/ReservationList.jsp");
			forward.setRedirect(false);
		}
		//회원정보 변경(비밀번호 확인)
		else if(command.equals("/GetPassword.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/GetPassword.jsp");
			forward.setRedirect(false);
		}
		//회원정보 변경
		else if(command.equals("/GetMemberInfo.me")){
			action=new GetMemberInfo();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//회원정보 변경 액션
		else if(command.equals("/ChangeMemberInformation.me")){
			action=new ChangeMemberInformation();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//비밀번호 변경
		else if(command.equals("/ChangePassword.me")){
			forward=new ActionForward();
			forward.setPath("./asiana_member/ChangePassword.jsp");
			forward.setRedirect(false);
		}
		//비밀번호 변경 액션
		else if(command.equals("/DoChangePassword.me")){
			action=new DoChangePassword();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//회원탈퇴
		else if(command.equals("/MyAsianaOut.me")){
			action=new MyAsianaOut();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//회원탈퇴 액션
		else if(command.equals("/MyAsianaOutAction.me")){
			action=new MyAsianaOutAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//회원목록(관리자)
		else if(command.equals("/AsianaMemberList.me")){
			action=new MemberListAction();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//회원목록 검색(관리자)
		else if(command.equals("/AsianaMemberListSearch.me")){
			action=new MemberListSearch();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//이동
		if(forward!=null){
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
}
