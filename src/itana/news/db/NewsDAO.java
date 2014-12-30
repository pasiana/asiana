package itana.news.db;

import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.jdbc.Blob;






public class NewsDAO {
	Connection con=null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	//DB 연결
		public Connection getConnection() throws Exception{
			Context init=new InitialContext();
			DataSource ds=(DataSource)init.lookup("java:comp/env/itwill3");
			con=ds.getConnection();
			return con;
		}
		
		
		public NewsBean getnews(int news_num){
			NewsBean newsbean=null;
			
			try {
				con=getConnection();
				sql="select * from News where news_num=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, news_num);
				rs=pstmt.executeQuery();
				if(rs.next()){
					newsbean=new NewsBean();
					
					newsbean.setNews_num(rs.getInt("news_num"));
					newsbean.setNews_content(rs.getString("news_content"));
					newsbean.setNews_sub1(rs.getString("news_sub1"));
					newsbean.setNews_sub2(rs.getString("news_sub2"));
					newsbean.setWrite_date(rs.getString("write_date"));
												
				}
								
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				if(rs!=null) try{rs.close();}catch(SQLException ex){}
				if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
				if(con!=null) try{con.close();}catch(SQLException ex){}
			}
			return newsbean;
		}
		public int getNewsCount() {
			int count=0;
						
			try {
				
				con=getConnection();
				
				sql="select count(*) from News";
				pstmt=con.prepareStatement(sql);
				
				rs=pstmt.executeQuery();
			
				if(rs.next()){
					count=rs.getInt(1);
				}
			
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				if(rs!=null) try{rs.close();}catch(SQLException ex){}
				if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
				if(con!=null) try{con.close();}catch(SQLException ex){}
			}
			
			
			return count;
		}
		
		public List<NewsBean> getnews(int startRow,int pageSize){
			List<NewsBean> newslist=new ArrayList<NewsBean>();
			
			try {
				//1,2 디비연결
				con=getConnection();
				
				//          limit 시작행-1,글개수
				sql="select * from News order by news_num desc limit ?,?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, startRow-1);
				pstmt.setInt(2, pageSize);
				//4 rs 저장
				rs=pstmt.executeQuery();
				//5 데이터가 있으면 자바빈 객체 생성
				// 폼 -> 자바빈 저장 -> boardlist한칸저장
				while(rs.next()){
					NewsBean newsBean=new NewsBean();
					
					newsBean.setNews_num(rs.getInt("news_num"));
					newsBean.setNews_content( rs.getString("news_content"));
					newsBean.setNews_sub1(rs.getString("news_sub1"));
					newsBean.setNews_sub2(rs.getString("news_sub2"));
					newsBean.setWrite_date(rs.getString("write_date"));
								
					newslist.add(newsBean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				if(rs!=null) try{rs.close();}catch(SQLException ex){}
				if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
				if(con!=null) try{con.close();}catch(SQLException ex){}
			}
			return newslist;
		}
		
		
}
