package com.cafe24.itwill3.charge.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.charge.db.ChargeDAO;
import com.cafe24.itwill3.charge.db.ChargeBean;

public class SearchCity implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String lea_city = request.getParameter("lea_city");
		ChargeDAO chargeDAO = new ChargeDAO();
		ArrayList<ChargeBean> list = chargeDAO.searchCity(lea_city);
		request.setAttribute("list", list);
		ActionForward forward = new ActionForward();
		forward.setPath("./searchCityList.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
