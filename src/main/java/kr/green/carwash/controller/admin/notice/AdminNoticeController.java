package kr.green.carwash.controller.admin.notice;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.vo.admin.AdminBoardVO;

@Controller
@RequestMapping(value="/admin/notice/*")
public class AdminNoticeController {
	
	@Autowired
	AdminMapper adminMapper;

	/* 공지사항 목록 */
	@RequestMapping(value="/list", method= RequestMethod.GET)
	public String noticeListPage(Model model, Criteria cri, AdminBoardVO adBoardVO) {
		
		int totCnt = adminMapper.countNotice();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		pageMaker.setTotalCount(totCnt);
		
		ArrayList<AdminBoardVO> list = (ArrayList) adminMapper.noticeListPage(pageMaker.getCriteria());
		
		System.out.println("/////// pageMaker : " + pageMaker + ", totCnt : " + totCnt);
 
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/notice/list";
	}
	
	/* 공지사항 등록 폼화면 */
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String noticeInsert() {
		
		return "/admin/notice/insert";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
