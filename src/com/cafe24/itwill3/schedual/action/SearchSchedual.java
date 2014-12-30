package com.cafe24.itwill3.schedual.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.schedual.db.SchedualBean;
import com.cafe24.itwill3.schedual.db.SchedualDAO;

public class SearchSchedual implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		String lea_time = request.getParameter("lea_time");
		String arr_time = request.getParameter("arr_time");
		String sig = request.getParameter("sig");
		
		SchedualDAO schedualDAO = new SchedualDAO();
		List<SchedualBean> list= schedualDAO.getSchedual(lea_city, arr_city, lea_time, arr_time);
		request.setAttribute("list", list);
		request.setAttribute("sig", sig);
				
		ActionForward forward = new ActionForward();
		forward.setPath("./asia_sub2/searchSchedual.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
