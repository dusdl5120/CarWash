package kr.green.carwash.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.carwash.vo.user.MemberVO;

public class UserInterceptor extends HandlerInterceptorAdapter{

	@Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	      
	      try {
	         if (request.getSession().getAttribute("user") == null || request.getSession().getAttribute("user") instanceof MemberVO) {
	            
	            response.sendRedirect(request.getContextPath() + "/user/member/needLogin");
	            return false;
	         }
	         else {
	            return true;
	         }
	      }catch (Exception e) {
	         e.printStackTrace();
	      }      
	            
	      return super.preHandle(request, response, handler);
	}
	
}
