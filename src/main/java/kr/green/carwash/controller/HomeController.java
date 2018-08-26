package kr.green.carwash.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.service.MemberService;
import kr.green.carwash.service.admin.AdminMemberService;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.service.user.UserMemberService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.AdminNoticeVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
public class HomeController {
	
	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;
	
	@Resource(name="memberService")
	MemberService memberService;
	
	@Resource(name="adminMemberService")
	AdminMemberService adminMemberService;
	
	@Resource(name="userMemberService")
	UserMemberService userMemberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	/* index화면 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String adminHome(Model model, HttpServletRequest request, AdminNoticeVO adNoticeVO) throws Exception { 
		
		/* 관리자인지 사용자인지 판별하는 변수로, 관리자가 아닌걸로 초기값 설정 */
		boolean admin = false;
		
		/* 공지사항 목록 3개만 가져오기 */
		ArrayList<AdminNoticeVO> list = (ArrayList) adminNoticeService.noticeMainList(3); 
		model.addAttribute("list", list);
		
		/* 공지사항 제목 옆에 오늘 날짜로 등록된 글은 NEW 표시를 하기 위한 날짜클래스.
		 * SimpleDateFormat 클래스를 이용하여 날짜포맷형식을 YYYY-MM-DD로 표시,
		 * 현재날짜정보를 가져와서 INPUTDATE 변수에 저장 */
		Date date = new Date(); 
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String inputDate = (String)simpleDate.format(date); 
		
		/* 공지사항 리스트개수만큼 REGDATE 변수에 저장할 배열생성 */
		boolean regDate[] = new boolean[list.size()];
		
		/* 향상된 FOR문으로 INDEX대신 CNT사용하여 초기값 0으로 설정 */
		int cnt = 0;
		
		/* LIST에 있는 값들을 하나씩 꺼내서 공지사항VO 객체 TMP에 저장 */
		for(AdminNoticeVO tmp : list) {
			
			/* 날짜형식이 KST ~라고 되어있는 부분을 SIMPLEDATE에서 지정해준 
			 * YYYY-MM-DD 문자열형식으로 형변환하여 NOTICEDATE에 저장 */
			String noticeDate = (String)simpleDate.format(tmp.getRegistered_date());
			
			/* 현재날짜와 작성한날짜와 비교해서 같을경우 REGDATE를 TRUE로,
			 * 같지 않을경우 FALSE로 */
			if (inputDate.compareTo(noticeDate) == 0) {
				regDate[cnt++] = true;
			} 
			else
				regDate[cnt++] = false;
		}
		
		/* 사용자와 관리자의 세션 정보를 가져오고 */
		Object user = memberService.getLoginInfo(request);		 
		
		/* 가져온 세션의 정보가 AdminMemberVO(관리자) 객체로 형변환이 가능하고, 세션의 정보가 값이 있을 경우 */
		if( user instanceof AdminMemberVO && user != null) {	 
			
			admin = true;
			model.addAttribute("regDate", regDate);
			
			/* 관리자인지 사용자인지의 여부 중 관리자!! */
			model.addAttribute("admin", admin);
			
			/* 세션으로 가져온 USER정보 */
			model.addAttribute("user",user);
			return "/index";
		
		
		} else if (user instanceof MemberVO && user != null) {
			
			admin = true;
			model.addAttribute("regDate", regDate);
			
			/* 관리자인지 사용자인지의 여부 중 사용자!! */
			model.addAttribute("users", admin);
			
			/* 세션으로 가져온 USER정보 */
			model.addAttribute("user",user);
			return "/index";
		}
		
		/* REGDATE의 BOOLEAN값을 JSP로 전달 */	
		model.addAttribute("regDate", regDate);
		
		return "/index";	
	}
	
	

	/* 로그인 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(Model model, HttpServletRequest request) throws Exception {
		
	    
	    return "/login/login";
	}
	
	@RequestMapping(value = "/login/admin", method = RequestMethod.POST)
	public String loginPost(Model model, HttpServletRequest request, int mode) throws Exception {
		
		/* 로그인했을 때의 아이디랑 비번 정보를 가져옴 */
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		
		
		if(mode == 1) {
			
			/* 로그인할때 사용자ID의 값을 가져와서 user객체에 담는다 */
			MemberVO user = userMemberService.loginById(id);
			/* id를 가져온 정보가 null이 아니고 , 입력한 비밀번호와 암호화된 비밀번호와 일치했을 경우 모델에 담아서 메인으로 리다이렉트 */
			if(user != null && passwordEncoder.matches(pw, user.getUser_passwd())) {
				
				/* 로그인한 사용자계정의 정보를 MODEL에 담고,
				 * MODE를 사용자로 설정 후 메인으로 리턴 */
				model.addAttribute("user", user);
				model.addAttribute("mode", 1);
				return "redirect:/"; 
			}
		}else {
			/* 로그인할때 관리자ID의 값을 가져와서 user객체에 담는다 */
		    AdminMemberVO user = adminMemberService.loginById(id);
		    
		    /* id를 가져온 정보가 null이 아니고 , 입력한 비밀번호와 암호화된 비밀번호와 일치했을 경우 모델에 담아서 메인으로 리다이렉트 */
		    if(user != null && passwordEncoder.matches(pw, user.getAdmin_passwd())) {
		    	
		    	/* 로그인한 관리자계정의 정보를 MODEL에 담고,
		    	 * MODE를 관리자로 설정 후 메인으로 리턴 */
		        model.addAttribute("user", user);
		        model.addAttribute("mode", 0);
		        return "redirect:/"; 
		    }
		}
		model.addAttribute("loginFail", 1);
		
		/* 일치하지 않을 경우 로그인 페이지로 이동 */
		return "redirect:/login";
	}

	/* 사용자 로그인 */
	@RequestMapping(value = "/login/adminss", method = RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request) throws Exception {
		
		/* 로그인했을 때의 아이디랑 비번 정보를 가져옴 */
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		
			
		/* 로그인할때 사용자ID의 값을 가져와서 user객체에 담는다 */
		MemberVO user = userMemberService.loginById(id);
		
		/* id를 가져온 정보가 null이 아니고 , 입력한 비밀번호와 암호화된 비밀번호와 일치했을 경우 모델에 담아서 메인으로 리다이렉트 */
		if(user != null && passwordEncoder.matches(pw, user.getUser_passwd())) {
			
			/* 로그인한 사용자계정의 정보를 MODEL에 담고,
			 * MODE를 사용자로 설정 후 메인으로 리턴 */
			model.addAttribute("user", user);
			model.addAttribute("mode", 1);
			return "redirect:/"; 
		}
		
		model.addAttribute("loginFail", 1);
		
		/* 일치하지 않을 경우 로그인 페이지로 이동 */
		return "redirect:/login";
	}
	
	

	/* 관리자 로그인 */
	@RequestMapping(value = "/login/admins", method = RequestMethod.POST)
	public String loginAdmin(Model model, HttpServletRequest request) throws Exception {
		
		/* 로그인했을 때의 아이디랑 비번 정보를 가져옴 */
	    String id = request.getParameter("loginId");
	    String pw = request.getParameter("loginPw");
	    
	    /* 로그인할때 관리자ID의 값을 가져와서 user객체에 담는다 */
	    AdminMemberVO user = adminMemberService.loginById(id);
	    
	    /* id를 가져온 정보가 null이 아니고 , 입력한 비밀번호와 암호화된 비밀번호와 일치했을 경우 모델에 담아서 메인으로 리다이렉트 */
	    if(user != null && passwordEncoder.matches(pw, user.getAdmin_passwd())) {
	    	
	    	/* 로그인한 관리자계정의 정보를 MODEL에 담고,
	    	 * MODE를 관리자로 설정 후 메인으로 리턴 */
	        model.addAttribute("user", user);
	        model.addAttribute("mode", 0);
	        return "redirect:/"; 
	    }
	    
	    model.addAttribute("loginFail", 1);
	    
	    /* 일치하지 않을 경우 로그인 페이지로 이동 */
	    return "redirect:/login";
	}
	

	
	
	
	
	
	
	
	
	
	
}
