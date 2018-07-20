package kr.green.carwash.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.vo.admin.AdminMemberVO;

@Controller
public class HomeController {
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	/* indexȭ�� */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest request) throws Exception { 
		
		/*  */
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		
		if(user != null /*&& user.getAdmin().compareTo("admin") != 0*/) {
			
			admin = true;
			model.addAttribute("admin", admin);
			System.out.println(admin);
			return "/index";
		}
		model.addAttribute("admin", admin);
		return "/index";//���� �α��� ������ �����ϸ� �ش� �������� �����̷�Ʈ �Ұ�!!
	}
	
}
