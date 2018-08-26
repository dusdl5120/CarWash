package kr.green.carwash.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.user.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
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
		
		/* Ŭ������ ���� �ֻ��� �θ�ü OBJECT�� USER�� �����ϰ�, �α��� JSP���� NAME�� MODE�� ��
		 * (VALUE = 1 : ����� / VALUE = 0 : ������)�� �����ͼ� ����Ÿ�� MODE�� ���� */
		Integer mode = (Integer)modelMap.get("mode");
		Object user;
		
		/* �����ڼ��� */
		if (mode != null && mode == 0) {
			user = (AdminMemberVO)modelMap.get("user");		/* adminMemberController login �޼ҵ忡�� ���̵�� ��������� �𵨿� ��Ҵ� user �������� �κ� */
		
		/* ����ڼ��� */
		} else {
			user = (MemberVO)modelMap.get("user");
		}
			
		/* �α����� �Ǿ��� �� �� ������ �����ͼ� USER�� MODE�� �����ض� */
		if (user != null) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("user", user);	
			session.setAttribute("mode", mode);	
		}
	}
}
