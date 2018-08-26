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
import kr.green.carwash.service.user.UserMemberService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
@RequestMapping(value="/admin/member/*")
public class AdminMemberController {

	@Resource(name="adminMemberService")
	AdminMemberService adminMemberService;

	@Resource(name="userMemberService")
	UserMemberService userMemberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	/* 회원가입 폼화면 */
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm(AdminMemberVO adMemberVO, Model model, Criteria cri) throws Exception {
		
		/* 사업장업종코드 정보 불러오기 */
		ArrayList<AdminMemberVO> placeCodeList = (ArrayList) adminMemberService.placeCodeAll();
		model.addAttribute("placeCodeList", placeCodeList);
		
		/* 세차유형 정보 불러오기 */
		ArrayList<AdminMemberVO> carwashTypeList = (ArrayList) adminMemberService.carwashTypeAll();
		model.addAttribute("carwashTypeList", carwashTypeList);
		
		/* 휴무일 정보 불러오기 */
		ArrayList<AdminMemberVO> closedDateList = (ArrayList) adminMemberService.closedDateAll();
		model.addAttribute("closedDateList", closedDateList);
		
		return "/admin/join/join";
	} 
	
	
	/* 회원가입 등록처리 */
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPost(AdminMemberVO adMemberVO) throws Exception {
		
		String encPw = passwordEncoder.encode(adMemberVO.getAdmin_passwd());

		adMemberVO.setAdmin_passwd(encPw);
		adminMemberService.insertAdminJoin(adMemberVO);
		
		return "redirect:/";
	}
	
	
	/* ID 중복확인 */
	@RequestMapping("/dup")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) throws Exception{
		
	    int count = 0;
	    Map<Object, Object> map = new HashMap<Object, Object>();
	    
	    if(adminMemberService.loginById(id) != null) 
	        count = 1;
	    
	    map.put("cnt", count);
	    
	      
	    return map;
	}
	

	
	/* 로그아웃 */
	@RequestMapping(value = "/logout")
	public String logut(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");	 
		
		/* 세션에 정보를 저장해놓기 때문에 user와 mode를 같이 제거해야함!! */
		if(user != null) {
			session.removeAttribute("user");
			session.removeAttribute("mode");
		}
		return "redirect:/";
	}
	
	
	/* 마이페이지 */
	@RequestMapping(value="/myPage")
	public String myPageRead(Model model, HttpServletRequest request, AdminMemberVO adMemberVO) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");	 
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		model.addAttribute("my", user);
		
		return "/admin/mypage/mypage";
	}
	
	
	
	/* 로그인 실패 시 로그인 페이지에서 아직 회원이 아닌 부분 링크 클릭했을 때 */
	@RequestMapping(value="/adminYn")
	public String adminYn() {
		
		return "/admin/login/adminYn";
	}
	
	
	/* 마이페이지 수정폼화면 */
	@RequestMapping(value="/myUpdate", method= RequestMethod.GET)
	public String updateForm(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		/* 사업장업종코드 정보 불러오기 */
		ArrayList<AdminMemberVO> placeCodeList = (ArrayList) adminMemberService.placeCodeAll();
		model.addAttribute("placeCodeList", placeCodeList);
		
		/* 세차유형 정보 불러오기 */
		ArrayList<AdminMemberVO> carwashTypeList = (ArrayList) adminMemberService.carwashTypeAll();
		model.addAttribute("carwashTypeList", carwashTypeList);
		
		/* 휴무일 정보 불러오기 */
		ArrayList<AdminMemberVO> closedDateList = (ArrayList) adminMemberService.closedDateAll();
		model.addAttribute("closedDateList", closedDateList);
		
		AdminMemberVO my = adminMemberService.myPageRead(adMemberVO);
		model.addAttribute("my", my);
		
		return "/admin/mypage/update";
	}
	
	
	/* 마이페이지 수정처리 */
	@RequestMapping(value="/myUpdate", method= RequestMethod.POST)
	public String updatePost(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		
		/* 비밀번호 입력 안했을 경우, 또는 ""로 공백도 값으로 인정되는 경우도 있으므로 글자수가 0인 경우도 포함한 경우 */
		if(adMemberVO.getAdmin_passwd() == null || adMemberVO.getAdmin_passwd().length() == 0) {
			
			/* 비밀번호를 제외한 쿼리문을 실행 */
			adminMemberService.myUpdateExceptPasswd(adMemberVO);
	
		} else {
			
			/* 비밀번호를 입력했을 경우 수정할 때 입력한 비밀번호를 암호화하여 넘겨주고 */
	    	String encPw = passwordEncoder.encode(adMemberVO.getAdmin_passwd());
			adMemberVO.setAdmin_passwd(encPw);
			
			/* 비밀번호를 포함한 쿼리문을 실행 */
			adminMemberService.myUpdate(adMemberVO);
			
	    }
		
		session.removeAttribute("user");
		session.setAttribute("user", adMemberVO);
		
		return "redirect:/";
	}
	
	
	/* 마이페이지 탈퇴 폼화면 */
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
	
	
	/* 마이페이지 탈퇴처리 */
	@RequestMapping(value="/myDelete", method= RequestMethod.POST)
	public String myDelete(AdminMemberVO adMemberVO, Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adMemberVO.setAdmin_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		model.addAttribute("adMemberVO", adMemberVO);
		
		
		String pw = request.getParameter("admin_passwd");
		
		if(user != null && passwordEncoder.matches(pw, user.getAdmin_passwd())) {
			
			adminMemberService.myDelete(adMemberVO);
			session.removeAttribute("user");
			return "redirect:/";
	    }
		
		return "/admin/mypage/delete";
	}
	
	
	 /* 로그인 후 글쓰기 */
	   @RequestMapping(value = "/needLogin")
	   public ModelAndView needLogin() throws Exception {
	      
	      ModelAndView mav = new ModelAndView("/admin/free/loginWarning");
	      mav.addObject("msg","로그인 후 이용해주세요.");
	      
	      return mav;
	   }
	   
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
 