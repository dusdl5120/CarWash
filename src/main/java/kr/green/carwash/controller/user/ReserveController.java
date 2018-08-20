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
		
		/* �õ��� ���� �ҷ����� */
		ArrayList<ReserveVO> sidoList = (ArrayList) reserveService.sidoListAll();
		model.addAttribute("sidoList", sidoList); 
		
		/* �ñ����� ���� �ҷ����� */
		ArrayList<ReserveVO> cityList = (ArrayList) reserveService.cityListAll();
		model.addAttribute("cityList", cityList);
		
		/* ������ ���� �ҷ����� */
		ArrayList<ReserveVO> businNameList = (ArrayList) reserveService.businNameListAll();
		model.addAttribute("businNameList", businNameList);
		
		/* �����з� ���� �ҷ����� */
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

		/* �ñ����� ���� �ҷ����� */
		ArrayList<ReserveVO> cityList = (ArrayList) reserveService.cityList(sido);

		return cityList;
	}
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
