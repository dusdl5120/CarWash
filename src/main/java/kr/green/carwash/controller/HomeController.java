package kr.green.carwash.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.AdminNoticeVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
public class HomeController {
	
	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	/* indexȭ�� */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String adminHome(Model model, HttpServletRequest request, AdminNoticeVO adNoticeVO) throws Exception { 
		
		/* �������� ��� 3���� �������� */
		ArrayList<AdminNoticeVO> list = (ArrayList) adminNoticeService.noticeMainList(3); 
		model.addAttribute("list", list);
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		
		if(user != null) {
			
			admin = true;
			model.addAttribute("admin", admin);
			return "/index";
		}
		
		model.addAttribute("admin", admin);
		
		return "/index";	//���� �α��� ������ �����ϸ� �ش� �������� �����̷�Ʈ �Ұ�!!
	}
	
	
	
	
	
	
	/*@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String userHome(Model model, HttpServletRequest request) throws Exception { 
		
		  
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean atUser = false;
		
		if(user != null && user.getAdmin().compareTo("admin") != 0) {
			
			atUser = true;
			model.addAttribute("admin", atUser);
			//System.out.println(admin);
			return "/index";
		}
		model.addAttribute("atUser", atUser);
		return "/index";//���� �α��� ������ �����ϸ� �ش� �������� �����̷�Ʈ �Ұ�!!
	}*/
	
}
