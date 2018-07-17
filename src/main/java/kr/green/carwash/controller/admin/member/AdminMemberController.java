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
	
	/* 회원가입 폼화면 */
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm(AdminMemberVO adMemberVO, Model model, Criteria cri) throws Exception {
		
		/* 사업장업종코드 정보 불러오기 */
		ArrayList<AdminMemberVO> placeCodeList = (ArrayList) adminMemberSerivice.placeCodeAll();
		model.addAttribute("placeCodeList", placeCodeList);
		
		/* 세차유형 정보 불러오기 */
		ArrayList<AdminMemberVO> carwashTypeList = (ArrayList) adminMemberSerivice.carwashTypeAll();
		model.addAttribute("carwashTypeList", carwashTypeList);
		
		/* 휴무일 정보 불러오기 */
		ArrayList<AdminMemberVO> closedDateList = (ArrayList) adminMemberSerivice.closedDateAll();
		model.addAttribute("closedDateList", closedDateList);
		
		return "/admin/join/join";
	}
	
	
	/* 회원가입 등록처리 */
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
 