package com.cafe24.itwill3.main.action;

import itana.news.action.Action;
import itana.news.action.ActionForward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainFrontController extends HttpServlet{
	
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				System.out.println("서블릿의 doProcess()메서드");
		
				
				String RequestURI=request.getRequestURI();
				String contextPath=request.getContextPath();//project경로
				StringBuffer RequestURL=request.getRequestURL();
				System.out.println(RequestURI);
				System.out.println(RequestURL);
				System.out.println(RequestURI.substring(contextPath.length()+1));
		
				ActionForward forward=null;
				Action action=null;
			
				if(RequestURI.substring(contextPath.length()+1).equals("ItanaMain.ma")){
					forward=new ActionForward();
					forward.setPath("./asia_main/main.jsp");
					forward.setReDirect(false);
				}else if(RequestURI.substring(contextPath.length()+1).equals("reserve.re")){
					forward = new ActionForward();
					forward.setPath("./asia_sub/reserve.jsp");
					forward.setReDirect(false);
					
					
				}
			
				
				if(forward!=null){
					if(forward.isReDirect()){
						response.sendRedirect(forward.getPath());
						
					}else{
						RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
						dispatcher.forward(request,response);
					}
					
					
				}	
				
				
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	
	

}
