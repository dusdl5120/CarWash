package kr.green.carwash.controller.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.ReplyVO;

@Controller
@RequestMapping(value="/reply/*")
public class ReplyController {
	
	@Resource(name="replyService")
	ReplyService replyService;

	/* ´ñ±Û ¸®½ºÆ® */
	@ResponseBody
	@RequestMapping(value="/list")
	public List<ReplyVO> replyList(Model model, Integer freeNo) throws Exception {
		
		return replyService.replyList(freeNo); 
	}
	
	/* ´ñ±Û µî·Ï */
	@ResponseBody
	@RequestMapping(value="/insert")
	public int replyInsert(@RequestParam Integer freeNo, @RequestParam String short_reply, HttpServletRequest request, Model model) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		ReplyVO reply = new ReplyVO();
		
		reply.setFree_no(freeNo);
		reply.setShort_reply(short_reply);
		reply.setRegistered_id(user.getAdmin_id());
		
		return replyService.replyInsert(reply);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*@RequestMapping("/dup")
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) throws Exception{
		
	    int count = 0;
	    Map<Object, Object> map = new HashMap<Object, Object>();
	    
	    if(adminMemberSerivice.loginById(id) != null) 
	        count = 1;
	    
	    map.put("cnt", count);
	    
	      
	    return map;
	}*/
	
	
	/*@ResponseBody
	public ArrayList<ReplyVO> replyList(Model model, ReplyVO free_id) throws Exception{
		
		ArrayList<ReplyVO> list = (ArrayList) replyService.replyList(free_id);
		
		model.addAttribute("list", list);
		
		return list;
	}*/
	
	
	
	
	
	
	
	
	
	
	
	
	
}
