package kr.green.carwash.controller.user;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.service.user.ReserveService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.user.MemberVO;
import kr.green.carwash.vo.user.ReserveVO;

@Controller
@RequestMapping(value="/user/reserve/*")
public class ReserveController {

	@Resource(name="reserveService")
	ReserveService reserveService;
	
	/* 예약폼 */
	@RequestMapping(value="/insert")
	public String reserveInsertForm(Model model, HttpServletRequest request, ReserveVO reserveVO) throws Exception {
		
		/* 시도명 정보 불러오기 */
		ArrayList<ReserveVO> sidoList = (ArrayList) reserveService.sidoListAll();
		model.addAttribute("sidoList", sidoList); 
		
		/* 시군구명 정보 불러오기 */
		ArrayList<ReserveVO> cityList = (ArrayList) reserveService.cityListAll();
		model.addAttribute("cityList", cityList);
		
		/* 사업장명 정보 불러오기 */
		ArrayList<ReserveVO> businNameList = (ArrayList) reserveService.businNameListAll();
		model.addAttribute("businNameList", businNameList);
		
		/* 차량분류 정보 불러오기 */
		ArrayList<ReserveVO> categoryList = (ArrayList) reserveService.categoryListAll();
		model.addAttribute("categoryList", categoryList);
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");	 
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		//reserveVO.setReserv_name(user.getUser_name());
		model.addAttribute("users", admin);
		
		return "/user/reserve/insert";
	}
	
	/* 시도명 셀렉했을 때 해당되는 시도명의 시군구 출력 */
	@RequestMapping(value="/city")
	@ResponseBody
	public ArrayList<ReserveVO> reserveSido(Model model, HttpServletRequest request, String sido) throws Exception {

		/* 시군구명 정보 불러오기 */
		ArrayList<ReserveVO> cityList = (ArrayList) reserveService.cityList(sido);

		return cityList;
	}
	
	/* 시도명과 시군구명을 셀렉했을 때 해당되는 사업장명 출력 */
	@RequestMapping(value="/businName")
	@ResponseBody
	public ArrayList<ReserveVO> reserveBusiName(Model model, HttpServletRequest request, String sido, String city) throws Exception {
		
		/* 사업장명 정보 불러오기 */
		ArrayList<ReserveVO> businNameList = (ArrayList) reserveService.businNameList(sido, city);
		
		return businNameList;
	}
	
	
	/* 예약등록 */
 	@RequestMapping(value="/insert", method=RequestMethod.POST) 
	public String reserveInsertPost(Model model, HttpServletRequest request, ReserveVO reserveVO) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("users", admin);
		
		reserveVO.setRegistered_id(user.getUser_id());
		reserveService.reserveInsert(reserveVO);
		
		return "redirect:/user/reserve/list";
	}
	
 	/* 예약목록 */
	@RequestMapping(value="/list") 
	public String reserveList(Model model, HttpServletRequest request, ReserveVO reserveVO) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("users", admin );
		 
		ArrayList<ReserveVO> list = (ArrayList) reserveService.reserveList(reserveVO);
		
		model.addAttribute("list", list);
		
		return "/user/reserve/list";  
	}
	
	
	/* 예약 상세정보 */
	@RequestMapping(value="/read", method=RequestMethod.GET) 
	public String reserveRead(Model model, HttpServletRequest request, ReserveVO reserveVO) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("users", admin);
		
		ReserveVO reserve = reserveService.reserveRead(reserveVO);
		model.addAttribute("reserve", reserve);
		
		return "/user/reserve/read";
	}
	
	
	/* 예약수정 */
	@RequestMapping(value="/update", method=RequestMethod.GET) 
	public String reserveUpdate(Model model, HttpServletRequest request, ReserveVO reserveVO, Integer reserv_no) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		
		
		/* 시도명 정보 불러오기 */
		ArrayList<ReserveVO> sidoList = (ArrayList) reserveService.sidoListAll();
		model.addAttribute("sidoList", sidoList); 
		
		/* 시군구명 정보 불러오기 */
		ArrayList<ReserveVO> cityList = (ArrayList) reserveService.cityListAll();
		model.addAttribute("cityList", cityList);
		
		/* 사업장명 정보 불러오기 */
		ArrayList<ReserveVO> businNameList = (ArrayList) reserveService.businNameListAll();
		model.addAttribute("businNameList", businNameList);
		
		/* 차량분류 정보 불러오기 */
		ArrayList<ReserveVO> categoryList = (ArrayList) reserveService.categoryListAll();
		model.addAttribute("categoryList", categoryList);
		
		ReserveVO reserve = reserveService.reserveRead(reserveVO);
		reserve.setReserv_no(reserv_no);
		reserve.setRegistered_id(user.getUser_id());
		
		model.addAttribute("reserve", reserve);
		model.addAttribute("users", admin);
		
		return "/user/reserve/update";
	}
	
	
	/* 예약수정 */
	@RequestMapping(value="/update", method=RequestMethod.POST) 
	public String reserveUpdatePost(Model model, HttpServletRequest request, ReserveVO reserveVO, Integer reserv_no) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		
		reserveVO.setRegistered_id(user.getUser_id());
		model.addAttribute("users", admin);
		
		reserveService.reserveUpdate(reserveVO);
		
		return "redirect:/user/reserve/list";
	}
	
	
	/* 예약삭제 */
	@RequestMapping(value="/delete") 
	public String reserveDelete(Model model, HttpServletRequest request, ReserveVO reserveVO, Integer reserv_no) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("users", admin);
		
		reserveService.reserveDelete(reserveVO);
		
		return "redirect:/user/reserve/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
