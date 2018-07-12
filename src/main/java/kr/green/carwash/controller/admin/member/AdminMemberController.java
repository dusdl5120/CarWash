package kr.green.carwash.controller.admin.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

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
	
	
	/* ȸ������ �� ȭ�� */
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm(AdminMemberVO adMemberVO, Model model, Criteria cri) throws Exception {
		
		/* ���������� �ڵ� �ҷ����� */
		
		ArrayList<AdminMemberVO> adMember = (ArrayList) adminMemberSerivice.carwashInfoAll();
		
		
		System.out.println("///////////////// placeCodeName : " + adminMemberSerivice.carwashInfo(adMemberVO.getBusin_place_code_name()));
		
		model.addAttribute("placeCodeList", adMember);
		
		return "/admin/join/join";
	}
	
	
	/* ȸ������ ���ó�� */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
 