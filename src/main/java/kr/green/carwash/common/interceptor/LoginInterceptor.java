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

		   ���ڿ��� ���ڿ��̶� �� : compareTo()  
		  *  ���ڿ� ���� �� 0�� 1
		  *  0�� �� ���ڿ��� ���� �� ��� 
		  *  1�� ������ ������ ��쵵 ���� 
		  *  �α����ϰ� ����Ʈ���� �ٽ� �α���â���� ������ �ϴ� �� ���� �۾� 
		
		HttpSession session = request.getSession();
		AdminMemberVO admin = (AdminMemberVO)session.getAttribute("user");		

		 �α��� ���������� ������ �α���â���� �������� ����Ʈ�� ���Բ� 
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
			
		// �α����� �Ǿ��� �� �� ������ �����ͼ� �����ض�
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);		
		}
		
	}
}
