package com.cafe24.itwill3.schedual.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchSchedual implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		
		ActionForward forward = new ActionForward();
		forward.setPath("./asia_sub2/searchCharge.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
