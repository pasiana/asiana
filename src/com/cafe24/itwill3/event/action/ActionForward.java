package com.cafe24.itwill3.event.action;

public class ActionForward {
	private boolean isReDirect=false;	//이동방식 	forward(false) or sendRedirect(true)
	private String path=null;	//주소값들어감
	
	public boolean isReDirect() {
		return isReDirect;
	}
	public void setReDirect(boolean isReDirect) {
		this.isReDirect = isReDirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
	
	
	
	
	
	
	

}
