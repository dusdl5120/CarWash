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
	
	 /*
	 �α��� 
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request) throws Exception {
		
		 �����ڷ� �α������� ���� ���̵�� ��� ������ ������ 
	    String id = request.getParameter("admin_id");
	    String pw = request.getParameter("admin_passwd");
	    
	     �α����Ҷ� id�� ���� �����ͼ� user��ü�� ��� 
	    AdminMemberVO user = adminMemberSerivice.loginById(id);
	    
	     id�� ������ ������ null�� �ƴϰ� , �Է��� ��й�ȣ�� ��ȣȭ�� ��й�ȣ�� ��ġ���� ��� �𵨿� ��Ƽ� �������� �����̷�Ʈ 
	    if(user != null && passwordEncoder.matches(pw, user.getAdmin_passwd())) {
	        model.addAttribute("user", user);
	        return "redirect:/"; 
	    }
	    
	     ��ġ���� ���� ��� �α��� �������� �̵� 
	    return "/admin/login/login";
	}
	
	
	 �α׾ƿ� 
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
 