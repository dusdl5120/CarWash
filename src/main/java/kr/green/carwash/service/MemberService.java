package kr.green.carwash.service;

import javax.servlet.http.HttpServletRequest;

public interface MemberService {

	public Object getLoginInfo(HttpServletRequest request) throws Exception;

	//boolean[] getNew(ArrayList<Object> list) throws Exception;
	
}
