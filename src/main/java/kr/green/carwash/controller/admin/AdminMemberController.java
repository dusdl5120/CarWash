package kr.green.carwash.controller.admin;

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
import org.springframework.web.servlet.ModelAndView;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.service.admin.AdminMemberService;
import kr.green.carwash.vo.admin.AdminMemberVO;

@Controller
@RequestMapping(value="/admin/member/*")
public class AdminMemberController {

	@Resource(name="adminMemberService")
	AdminMemberService adminMemberSerivice;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	/* ȸ������ ��ȭ�� */
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm(AdminMemberVO adMemberVO, Model model, Criteria cri) throws Exception {
		
		/* ���������ڵ� ���� �ҷ����� */
		ArrayList<AdminMemberVO> placeCodeList = (ArrayList) adminMemberSerivice.placeCodeAll();
		model.addAttribute("placeCodeList", placeCodeList);
		
		/* �������� ���� �ҷ����� */
		ArrayList<AdminMemberVO> carwashTypeList = (ArrayList) adminMemberSerivice.carwashTypeAll();
		model.addAttribute("carwashTypeList", carwashTypeList);
		
		/* �޹��� ���� �ҷ����� */
		ArrayList<AdminMemberVO> closedDateList = (ArrayList) adminMemberSerivice.closedDateAll();
		model.addAttribute("closedDateList", closedDateList);
		
		return "/admin/join/join";
	} 
	
	
	/* ȸ������ ���ó�� */
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPost(AdminMemberVO adMemberVO) throws Exception {
		
		String encPw = passwordEncoder.encode(adMemberVO.getAdmin_passwd());

		adMemberVO.setAdmin_passwd(encPw);
	    adminMemberSerivice.insertAdminJoin(adMemberVO);
		
		return "redirect:/";
	}
	
	
	/* ID �ߺ�Ȯ�� */
	@RequestMapping("/dup")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) throws Exception{
		
	    int count = 0;
	    Map<Object, Object> map = new HashMap<Object, Object>();
	    
	    if(adminMemberSerivice.loginById(id) != null) 
	        count = 1;
	    
	    map.put("cnt", count);
	    
	      
	    return map;
	}
	
	
	/* �α��� */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(Model model, HttpServletRequest request) throws Exception {
		
	    
	    return "/admin/login/login";
	}
	
	
	
	/* �α��� */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request) throws Exception {
		
		/* �����ڷ� �α������� ���� ���̵�� ��� ������ ������ */
	    String id = request.getParameter("admin_id");
	    String pw = request.getParameter("admin_passwd");
	    
	    /* �α����Ҷ� id�� ���� �����ͼ� user��ü�� ��� */
	    AdminMemberVO user = adminMemberSerivice.loginById(id);
	    
	    /* id�� ������ ������ null�� �ƴϰ� , �Է��� ��й�ȣ�� ��ȣȭ�� ��й�ȣ�� ��ġ���� ��� �𵨿� ��Ƽ� �������� �����̷�Ʈ */
	    if(user != null && passwordEncoder.matches(pw, user.getAdmin_passwd())) {
	        model.addAttribute("user", user);
	        return "redirect:/"; 
	    }
	    
	    /* ��ġ���� ���� ��� �α��� �������� �̵� */
	    return "/admin/login/login";
	}
	
	
	/* �α׾ƿ� */
	@RequestMapping(value = "/logout")
	public String logut(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");	 
		
		if(user != null) 
			session.removeAttribute("user");
		
		return "redirect:/";
	}
	
	
	/* ���������� */
	@RequestMapping(value="/myPage")
	public String myPageRead(Model model, HttpServletRequest request, AdminMemberVO adMemberVO) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");	 
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		System.out.println("---------" + adMemberVO.getAdmin_id()); 
		
		AdminMemberVO my = adminMemberSerivice.myPageRead(adMemberVO);
		
		model.addAttribute("admin", admin);
		model.addAttribute("my", my);
		
		return "/admin/mypage/mypage";
	}
	
	
	
	/* �α��� ���� �� �α��� ���������� ���� ȸ���� �ƴ� �κ� ��ũ Ŭ������ �� */
	@RequestMapping(value="/adminYn")
	public String adminYn() {
		
		return "/admin/login/adminYn";
	}
	
	
	/* ���������� ������ȭ�� */
	@RequestMapping(value="/myUpdate", method= RequestMethod.GET)
	public String updateForm(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		/* ���������ڵ� ���� �ҷ����� */
		ArrayList<AdminMemberVO> placeCodeList = (ArrayList) adminMemberSerivice.placeCodeAll();
		model.addAttribute("placeCodeList", placeCodeList);
		
		/* �������� ���� �ҷ����� */
		ArrayList<AdminMemberVO> carwashTypeList = (ArrayList) adminMemberSerivice.carwashTypeAll();
		model.addAttribute("carwashTypeList", carwashTypeList);
		
		/* �޹��� ���� �ҷ����� */
		ArrayList<AdminMemberVO> closedDateList = (ArrayList) adminMemberSerivice.closedDateAll();
		model.addAttribute("closedDateList", closedDateList);
		
		AdminMemberVO my = adminMemberSerivice.myPageRead(adMemberVO);
		model.addAttribute("my", my);
		
		return "/admin/mypage/update";
	}
	
	
	/* ���������� ����ó�� */
	@RequestMapping(value="/myUpdate", method= RequestMethod.POST)
	public String updatePost(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		
		/* ��й�ȣ �Է� ������ ���, �Ǵ� ""�� ���鵵 ������ �����Ǵ� ��쵵 �����Ƿ� ���ڼ��� 0�� ��쵵 ������ ��� */
		if(adMemberVO.getAdmin_passwd() == null || adMemberVO.getAdmin_passwd().length() == 0) {
			
			/* ��й�ȣ�� ������ �������� ���� */
			adminMemberSerivice.myUpdateExceptPasswd(adMemberVO);
	
		} else {
			
			/* ��й�ȣ�� �Է����� ��� ������ �� �Է��� ��й�ȣ�� ��ȣȭ�Ͽ� �Ѱ��ְ� */
	    	String encPw = passwordEncoder.encode(adMemberVO.getAdmin_passwd());
			adMemberVO.setAdmin_passwd(encPw);
			
			/* ��й�ȣ�� ������ �������� ���� */
			adminMemberSerivice.myUpdate(adMemberVO);
			
	    }
		
		return "redirect:/";
	}
	
	
	/* ���������� Ż�� ��ȭ�� */
	@RequestMapping(value="/myDelete", method= RequestMethod.GET)
	public String deleteForm(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		return "/admin/mypage/delete";
		
	}
	
	
	/* ���������� Ż��ó�� */
	@RequestMapping(value="/myDelete", method= RequestMethod.POST)
	public String myDelete(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		adminMemberSerivice.myDelete(adMemberVO);
		
		return "redirect:/";
	}
	
	
	// �α��� �� �۾���
	   @RequestMapping(value = "/needLogin")
	   public ModelAndView needLogin() throws Exception {
	      
	      ModelAndView mav = new ModelAndView("/admin/free/loginWarning");
	      mav.addObject("msg","�α��� �� �̿����ּ���.");
	      
	      return mav;
	   }
	   
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
 