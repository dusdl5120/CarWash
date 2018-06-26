package kr.green.carwash.controller.admin.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/admin/*")
public class AdminMemberController {

	// Join ÆûÈ­¸é
	@RequestMapping(value="/join", method= RequestMethod.GET)
	public String joinForm() {
		
		return "/admin/join/join";
	}
}
 