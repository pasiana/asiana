package itana.news.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class NewsFrontController extends HttpServlet {

	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿의 doProcess()메서드");

		// url 가상주소확인->제어
		// http://localhost:8080/Model2/MemberJoin.me(가상주소 가져오기)
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();// project경로
		StringBuffer RequestURL = request.getRequestURL();
		System.out.println(RequestURI);
		System.out.println(RequestURL);
		System.out.println(RequestURI.substring(contextPath.length() + 1));

		ActionForward forward = null;
		Action action = null;

		/*
		 * if(RequestURI.substring(contextPath.length()+1).equals("ItanaNews.ne")
		 * ){ forward=new ActionForward();
		 * forward.setPath("./asia_news/newsmain.jsp");
		 * forward.setReDirect(false); }else
		 */
		if (RequestURI.substring(contextPath.length() + 1).equals(
				"ItanaNews.ne")) {
			action = new newslistaction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {

				e.printStackTrace();
			}

		} else if (RequestURI.substring(contextPath.length() + 1).equals(
				"ItanaInfo.ne")) {

			forward = new ActionForward();
			forward.setPath("./asia_sub3/Introduction.jsp");
			forward.setReDirect(false);

		} else if (RequestURI.substring(contextPath.length() + 1).equals(
				"NewsDetailAction.ne")) {
			action = new NewsDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {

				e.printStackTrace();
			}
		}

		
		
		
		
		
		
		
		
		
		
		if (forward != null) {
			if (forward.isReDirect()) {
				response.sendRedirect(forward.getPath());

			} else {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}

		}
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		doProcess(request, response);
	}

}
