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
		****  로그인 전체적인 흐름  ****
		
		1. 로그인 웹화면에서 로그인을 시도하고 menu.jsp에서 경로를 지정해준 AdminMemberController ("/carwash/admin/member/login")로 이동
		2. login메소드에서  입력한 아이디와 비밀번호를 가져와서 memberVO객체의 아이디 값만 가지고 와서 user객체에 담고
		   그 user의 값이 널이 아니고 내가 입력한 비밀번호랑 암호화된 비밀번호와 일치했을 경우에는 user를 모델에 담아서
		3. 로그인 인터셉터 post핸들로 이동
		4. 모델맵을 생성하고 모델맵에 아까 모델에 담았던 user속성을 가지고와서 user객체에 담기
		5. 그러고 그 user가 널이 아니면 user의 속성을 세션에 담기
		6. 그런다음 login메소드로 가보면 절대경로(/carwash)로 리턴하게 됨
	
		
	*/
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
		ModelMap modelMap = modelAndView.getModelMap();
		
		/* 클래스의 가장 최상위 부모객체 OBJECT로 USER를 선언하고, 로그인 JSP에서 NAME값 MODE의 값
		 * (VALUE = 1 : 사용자 / VALUE = 0 : 관리자)을 가져와서 정수타입 MODE에 저장 */
		Integer mode = (Integer)modelMap.get("mode");
		Object user;
		
		/* 관리자세션 */
		if (mode != null && mode == 0) {
			user = (AdminMemberVO)modelMap.get("user");		/* adminMemberController login 메소드에서 아이디랑 비번정보를 모델에 담았던 user 가져오는 부분 */
		
		/* 사용자세션 */
		} else {
			user = (MemberVO)modelMap.get("user");
		}
			
		/* 로그인이 되었을 때 그 세션을 가져와서 USER와 MODE를 저장해라 */
		if (user != null) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("user", user);	
			session.setAttribute("mode", mode);	
		}
	}
}
