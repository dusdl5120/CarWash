package kr.green.carwash.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter{

	@Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	      
	      try {
	         if (request.getSession().getAttribute("user") == null) {
	            
	            response.sendRedirect(request.getContextPath() + "/admin/member/needLogin");
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
