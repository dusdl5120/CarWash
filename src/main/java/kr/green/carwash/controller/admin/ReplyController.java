package kr.green.carwash.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.ReplyVO;

@Controller
@RequestMapping(value="/reply/*")
public class ReplyController {
	
	@Resource(name="replyService")
	ReplyService replyService;

	/* ´ñ±Û ¸®½ºÆ® */
	
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
