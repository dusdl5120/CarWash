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
	
	/* ����� ȸ������ ��ȭ�� */
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm(MemberVO memberVO, Model model, Criteria cri) throws Exception {
		
		
		
		return "/user/join/join";
	}
	
	
	/* ȸ������ ���ó�� */
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPost(MemberVO memberVO) throws Exception {
		
		String encPw = passwordEncoder.encode(memberVO.getUser_passwd());

		memberVO.setUser_passwd(encPw);
		userMemberService.insertUserJoin(memberVO);
		
		return "redirect:/";
	}
	
	
	/* ID �ߺ�Ȯ�� */
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
	
	
	/* ���������� */
	@RequestMapping(value="/myPage")
	public String myPageRead(Model model, HttpServletRequest request, MemberVO memberVO) throws Exception {
		
		boolean admin = false;
		
		/* ����ڿ� �������� ���� ������ �������� */
		Object user = memberService.getLoginInfo(request);		 
		
		if(user != null)
			admin = true;
		
		/* �����ڿ��� �� ����� ������ �����ͼ� users�� ���
		 * ������ ������� ���� user�� my�� ��Ƽ� jsp�� �ѷ��� */
		model.addAttribute("users", admin);
		model.addAttribute("my", user);
		
		return "/user/mypage/mypage";
	}
	
	
	/* ���������� ������ȭ�� */
	@RequestMapping(value="/myUpdate", method= RequestMethod.GET)
	public String updateForm(MemberVO memberVO, Model model, HttpServletRequest request) throws Exception {
		
		boolean admin = false;
		
		/* ����ڿ� �������� ���� ������ �������� */
		Object user = memberService.getLoginInfo(request);		 
		
		if(user != null)
			admin = true;
		
		/* �����ڿ��� �� ����� ������ �����ͼ� users�� ���
		 * ������ ������� ���� user�� my�� ��Ƽ� jsp�� �ѷ��� */
		model.addAttribute("users", admin);
		model.addAttribute("my", user);
		
		return "/user/mypage/update";
	}
	
	
	/* ���������� ����ó�� */
	@RequestMapping(value="/myUpdate", method= RequestMethod.POST)
	public String updatePost(MemberVO memberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		memberVO.setUser_id(user.getUser_id());
		memberVO.setUser_name(user.getUser_name());
		boolean admin = false;
		if(user != null)
			admin = true;
		
		/* ��й�ȣ �Է� ������ ���, �Ǵ� ""�� ���鵵 ������ �����Ǵ� ��쵵 �����Ƿ� ���ڼ��� 0�� ��쵵 ������ ��� */
		if(memberVO.getUser_passwd() == null || memberVO.getUser_passwd().length() == 0) {
			
			/* ��й�ȣ�� ������ �������� ���� */
			userMemberService.myUpdateExceptPasswd(memberVO);
	
		} else {
			
			/* ��й�ȣ�� �Է����� ��� ������ �� �Է��� ��й�ȣ�� ��ȣȭ�Ͽ� �Ѱ��ְ� */
	    	String encPw = passwordEncoder.encode(memberVO.getUser_passwd());
	    	memberVO.setUser_passwd(encPw);
			
			/* ��й�ȣ�� ������ �������� ���� */
	    	userMemberService.myUpdate(memberVO);
			
	    }
		
		session.removeAttribute("user");
		session.setAttribute("user", memberVO);
		model.addAttribute("users", admin);
		return "redirect:/";
	}
	
	
	
	/* ���������� Ż�� ��ȭ�� */
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
	
	
	/* ���������� Ż��ó�� */
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
	
	
	/* �α׾ƿ� */
	@RequestMapping(value = "/logout")
	public String logut(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");	 
		
		/* ���ǿ� ������ �����س��� ������ user�� mode�� ���� �����ؾ���!! */
		if(user != null) {
			session.removeAttribute("user");
			session.removeAttribute("mode");
		}
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
 