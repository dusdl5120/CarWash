package kr.green.carwash.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.service.LoginService;
import kr.green.carwash.vo.LoginVO;

@Controller
public class HomeController {
	
	@Resource(name="loginService")
	LoginService loginService;
	
	/*@Resource(name="passwordEncoder")
	BCryptPasswordEncoder passwordEncoder;*/
	
	// index»≠∏È
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String home(Model model, HttpServletRequest request) throws Exception { 
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LoginVO user = loginService.loginById(id);
		
	  /*  if(user != null && passwordEncoder.matches(passwd, user.getPasswd())) {
	        model.addAttribute("user", user);
	        return "redirect:/carwash";
	    }*/
		
		if(user != null) {
	        model.addAttribute("user", user);
	        return "redirect:/carwash";
		}
		
		return "redirect:/admin/notice/list";
	}
	
	
	
}
