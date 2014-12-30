package com.cafe24.itwill3.schedual.action;

public class ActionForward {
	private boolean isRedirect = false;
	private String path = "";
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
