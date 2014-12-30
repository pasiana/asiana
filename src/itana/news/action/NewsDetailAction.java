package itana.news.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itana.news.db.NewsBean;
import itana.news.db.NewsDAO;
public class NewsDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("NewsDetailAction");
				//int  num , String  pageNum 가져오기
				int num=Integer.parseInt(request.getParameter("num"));
				String pageNum=request.getParameter("pageNum");
				
				NewsDAO newsdao=new NewsDAO();
				
				NewsBean newsbean=newsdao.getnews(num);
				request.setAttribute("newsbean", newsbean);
				request.setAttribute("pagenum", pageNum);
				
				ActionForward forward=new ActionForward();
				forward.setPath("./asia_news/newscontent.jsp");
				forward.setReDirect(false);
				return forward;
				
				
		
		
		
		
	}
	
}
