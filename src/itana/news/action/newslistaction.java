package itana.news.action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import itana.news.db.NewsBean;
import itana.news.db.NewsDAO;

public class newslistaction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			request.setCharacterEncoding("utf-8");
		
				//디비객체 생성 
			NewsDAO newsdao= new NewsDAO();
				
			int count=newsdao.getNewsCount();
				//한페이지 보여줄 글수
			int pageSize=5;
				//현페이지 가져오기
			String pageNum=request.getParameter("pageNum");
			if(pageNum==null){
				pageNum="1";
			}				
			int currentPage=Integer.parseInt(pageNum);
				//시작하는 행구하기
			int startRow=(currentPage-1)*pageSize+1;
				//끝나는 행구하기
			int endRow=currentPage*pageSize;
				//글이 있으면 디비 게시판 글 가져오기
			List<NewsBean> newslist=null;
			if(count!=0){
				newslist=newsdao.getnews(startRow, pageSize);
			}
			
			
			//가상의번호계산
			int number=0;
			number=count-(currentPage-1)*pageSize;
			
			int pageCount=count/pageSize+(count%pageSize==0?0:1); 
				//한화면에 보여줄 페이지수 설정
			int pageBlock=5;
			
				//시작페이지 번호 구하기
			int startPage=((int)(currentPage/pageBlock)-(currentPage%pageBlock==0?1:0))*pageBlock+1;
				//끝페이지 번호 구하기
			int endPage=startPage+pageBlock-1;
			if(endPage>pageCount){
				endPage=pageCount;
			}//=>준비작업끝
			
			//=>저장후 이동			//배열로 한꺼번에 넘기는것도 가능
				//저장 count, 현페이지 , 게시판 글,전체 페이지수
			request.setAttribute("count", count);
			request.setAttribute("currentPage", currentPage); 
			request.setAttribute("newslist", newslist);
			request.setAttribute("pageCount", pageCount);
				//  시작페이지, 끝페이지
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("number", number);	
			request.setAttribute("pageBlock", pageBlock);	
				//이동 list.jsp//
				
			ActionForward forward= new ActionForward();
			forward.setPath("./asia_news/newsmain.jsp");
			forward.setReDirect(false);
		
		
		
		
		return forward;
	}
		
}