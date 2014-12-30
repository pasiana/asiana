package com.cafe24.itwill3.charge.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe24.itwill3.charge.db.ChargeBean;
import com.cafe24.itwill3.charge.db.ChargeDAO;

public class SearchCharge implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String lea_city = request.getParameter("lea_city");
		String arr_city = request.getParameter("arr_city");
		ChargeDAO chargeDAO = new ChargeDAO();
		ChargeBean chargeBean= chargeDAO.searchCharge(lea_city, arr_city);
		request.setAttribute("chargeBean", chargeBean);
		ActionForward forward = new ActionForward();
		forward.setPath("./asia_sub2/searchCharge.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
