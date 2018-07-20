package kr.green.carwash.common.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.carwash.vo.admin.AdminMemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	/*@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {

		   문자열과 문자열이랑 비교 : compareTo()  
		  *  문자열 비교할 때 0과 1
		  *  0은 두 문자열이 같을 때 사용 
		  *  1은 음수가 나오는 경우도 있음 
		  *  로그인하고 리스트에서 다시 로그인창으로 가려고 하는 걸 막는 작업 
		
		HttpSession session = request.getSession();
		AdminMemberVO admin = (AdminMemberVO)session.getAttribute("user");		

		 로그인 유저정보가 있으면 로그인창으로 가지말고 리스트로 가게끔 
		if (admin != null) {
			response.sendRedirect("/carwash"); 
			return false;
		}
		
		return true;
	}*/
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
		ModelMap modelMap = modelAndView.getModelMap();
		AdminMemberVO user = (AdminMemberVO)modelMap.get("user");
			
		// 로그인이 되었을 때 그 세션을 가져와서 저장해라
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);		
		}
		
	}
}
