package kr.green.carwash.controller.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.service.MemberService;
import kr.green.carwash.service.user.UserMemberService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
@RequestMapping(value="/user/member/*")
public class UserMemberController {

	@Resource(name="userMemberService")
	UserMemberService userMemberService;
	
	@Resource(name="memberService")
	MemberService memberService;
	
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
	
	
	/* 마이페이지 */
	@RequestMapping(value="/myPage")
	public String myPageRead(Model model, HttpServletRequest request, MemberVO memberVO) throws Exception {
		
		boolean admin = false;
		
		/* 사용자와 관리자의 세션 정보를 가져오고 */
		Object user = memberService.getLoginInfo(request);		 
		
		if(user != null)
			admin = true;
		
		/* 관리자여부 중 사용자 정보를 가져와서 users에 담고
		 * 가입한 사용자의 정보 user를 my에 담아서 jsp에 뿌려줌 */
		model.addAttribute("users", admin);
		model.addAttribute("my", user);
		
		return "/user/mypage/mypage";
	}
	
	
	/* 마이페이지 수정폼화면 */
	@RequestMapping(value="/myUpdate", method= RequestMethod.GET)
	public String updateForm(MemberVO memberVO, Model model, HttpServletRequest request) throws Exception {
		
		boolean admin = false;
		
		/* 사용자와 관리자의 세션 정보를 가져오고 */
		Object user = memberService.getLoginInfo(request);		 
		
		if(user != null)
			admin = true;
		
		/* 관리자여부 중 사용자 정보를 가져와서 users에 담고
		 * 가입한 사용자의 정보 user를 my에 담아서 jsp에 뿌려줌 */
		model.addAttribute("users", admin);
		model.addAttribute("my", user);
		
		return "/user/mypage/update";
	}
	
	
	/* 마이페이지 수정처리 */
	@RequestMapping(value="/myUpdate", method= RequestMethod.POST)
	public String updatePost(MemberVO memberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		memberVO.setUser_id(user.getUser_id());
		memberVO.setUser_name(user.getUser_name());
		boolean admin = false;
		if(user != null)
			admin = true;
		
		/* 비밀번호 입력 안했을 경우, 또는 ""로 공백도 값으로 인정되는 경우도 있으므로 글자수가 0인 경우도 포함한 경우 */
		if(memberVO.getUser_passwd() == null || memberVO.getUser_passwd().length() == 0) {
			
			/* 비밀번호를 제외한 쿼리문을 실행 */
			userMemberService.myUpdateExceptPasswd(memberVO);
	
		} else {
			
			/* 비밀번호를 입력했을 경우 수정할 때 입력한 비밀번호를 암호화하여 넘겨주고 */
	    	String encPw = passwordEncoder.encode(memberVO.getUser_passwd());
	    	memberVO.setUser_passwd(encPw);
			
			/* 비밀번호를 포함한 쿼리문을 실행 */
	    	userMemberService.myUpdate(memberVO);
			
	    }
		
		session.removeAttribute("user");
		session.setAttribute("user", memberVO);
		model.addAttribute("users", admin);
		return "redirect:/";
	}
	
	
	
	/* 마이페이지 탈퇴 폼화면 */
	@RequestMapping(value="/myDelete", method= RequestMethod.GET)
	public String deleteForm(MemberVO memberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		memberVO.setUser_id(user.getUser_id());
		
		model.addAttribute("users", admin);
		model.addAttribute("my", memberVO);
		
		return "/user/mypage/delete";
		
	}
	
	
	/* 마이페이지 탈퇴처리 */
	@RequestMapping(value="/myDelete", method= RequestMethod.POST)
	public String myDelete(MemberVO memberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		memberVO.setUser_id(user.getUser_id());
		model.addAttribute("users", admin);
		model.addAttribute("my", memberVO);
		
		
		String pw = request.getParameter("user_passwd");
		
		if(user != null && passwordEncoder.matches(pw, user.getUser_passwd())) {
			
			userMemberService.myDelete(memberVO);
			session.removeAttribute("user");
			session.removeAttribute("mode");
			return "redirect:/";
	    }
		
		return "/user/mypage/delete";
	}
	
	
	/* 로그아웃 */
	@RequestMapping(value = "/logout")
	public String logut(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");	 
		
		/* 세션에 정보를 저장해놓기 때문에 user와 mode를 같이 제거해야함!! */
		if(user != null) {
			session.removeAttribute("user");
			session.removeAttribute("mode");
		}
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
 