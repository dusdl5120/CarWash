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
	
}
 