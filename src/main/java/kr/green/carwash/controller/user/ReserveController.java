package kr.green.carwash.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.service.user.ReserveService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.user.ReserveVO;

@Controller
@RequestMapping(value="/reserve/*")
public class ReserveController {

	@Resource(name="reserveService")
	ReserveService reserveService;
	
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
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");	 
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		//reserveVO.setReserv_name(user.getUser_name());
		model.addAttribute("admin", admin);
		
		return "/user/reserve/insert";
	}
	
	
	@RequestMapping(value="/city")
	@ResponseBody
	public ArrayList<ReserveVO> reserveSido(Model model, HttpServletRequest request, String sido) throws Exception {

		/* 시군구명 정보 불러오기 */
		ArrayList<ReserveVO> cityList = (ArrayList) reserveService.cityList(sido);

		return cityList;
	}
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
