package kr.green.carwash.controller.admin.member;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		adminMemberSerivice.insertAdminJoin(adMemberVO);
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value ="/dd")
	public String test(AdminMemberVO adMemberVO) throws Exception {
	    String encPw = passwordEncoder.encode("1234");
	    String id = "1234";
	    AdminMemberVO user = new AdminMemberVO();
	    user.setAdmin_id(id);
	    user.setAdmin_passwd(encPw);
	    adminMemberSerivice.insertAdminJoin(adMemberVO);
	    return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
 