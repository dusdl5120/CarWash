package kr.green.carwash.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.carwash.vo.admin.AdminMemberVO;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter{
	
	/*
		****  �α��� ��ü���� �帧  ****
		
		1. �α��� ��ȭ�鿡�� �α����� �õ��ϰ� menu.jsp���� ��θ� �������� AdminMemberController ("/carwash/admin/member/login")�� �̵�
		2. login�޼ҵ忡��  �Է��� ���̵�� ��й�ȣ�� �����ͼ� memberVO��ü�� ���̵� ���� ������ �ͼ� user��ü�� ���
		   �� user�� ���� ���� �ƴϰ� ���� �Է��� ��й�ȣ�� ��ȣȭ�� ��й�ȣ�� ��ġ���� ��쿡�� user�� �𵨿� ��Ƽ�
		3. �α��� ���ͼ��� post�ڵ�� �̵�
		4. �𵨸��� �����ϰ� �𵨸ʿ� �Ʊ� �𵨿� ��Ҵ� user�Ӽ��� ������ͼ� user��ü�� ���
		5. �׷��� �� user�� ���� �ƴϸ� user�� �Ӽ��� ���ǿ� ���
		6. �׷����� login�޼ҵ�� ������ ������(/carwash)�� �����ϰ� ��
	
		
	*/
	
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
