package kr.green.carwash.controller.user;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.service.user.UserMemberService;
import kr.green.carwash.vo.user.MemberVO;

@Controller
@RequestMapping(value="/user/member/*")
public class UserMemberController {

	@Resource(name="userMemberService")
	UserMemberService userMemberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	/* 사용자 회원가입 폼화면 */
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm(MemberVO memberVO, Model model, Criteria cri) throws Exception {
		
		
		
		return "/user/join/join";
	}
	
	
	/* 회원가입 등록처리 */
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPost(MemberVO memberVO) throws Exception {
		
		String encPw = passwordEncoder.encode(memberVO.getUser_passwd());

		memberVO.setUser_passwd(encPw);
		userMemberService.insertUserJoin(memberVO);
		
		return "redirect:/";
	}
	
	
	/* ID 중복확인 */
	@RequestMapping("/dup")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) throws Exception{
		
	    int count = 0;
	    Map<Object, Object> map = new HashMap<Object, Object>();
	    
	    if(userMemberService.loginById(id) != null) 
	        count = 1;
	    
	    map.put("cnt", count);
	    
	      
	    return map;
	}
	
	 /*
	 로그인 
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request) throws Exception {
		
		 관리자로 로그인했을 때의 아이디랑 비번 정보를 가져옴 
	    String id = request.getParameter("admin_id");
	    String pw = request.getParameter("admin_passwd");
	    
	     로그인할때 id의 값을 가져와서 user객체에 담아 
	    AdminMemberVO user = adminMemberSerivice.loginById(id);
	    
	     id를 가져온 정보가 null이 아니고 , 입력한 비밀번호와 암호화된 비밀번호와 일치했을 경우 모델에 담아서 메인으로 리다이렉트 
	    if(user != null && passwordEncoder.matches(pw, user.getAdmin_passwd())) {
	        model.addAttribute("user", user);
	        return "redirect:/"; 
	    }
	    
	     일치하지 않을 경우 로그인 페이지로 이동 
	    return "/admin/login/login";
	}
	
	
	 로그아웃 
	@RequestMapping(value = "/logout")
	public String logut(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");	 
		
		if(user != null) 
			session.removeAttribute("user");
		
		return "redirect:/";
	}
	
	*/
	
	
	
	
	
	
	
}
 