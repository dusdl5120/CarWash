package kr.green.carwash.controller.admin.notice;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminBoardVO;

@Controller
@RequestMapping(value="/admin/notice/*")
public class AdminNoticeController {
	
	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;

	/* 공지사항 목록 */
	@RequestMapping(value="/list", method= RequestMethod.GET)
	public String noticeListPage(Model model, Criteria cri, AdminBoardVO adBoardVO) throws Exception {
		
		int totCnt = adminNoticeService.countNotice(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		pageMaker.setTotalCount(totCnt);
		
		ArrayList<AdminBoardVO> list = (ArrayList) adminNoticeService.noticeListPage(pageMaker.getCriteria());
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");
 
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/notice/list";
	}
	
	/* 공지사항 등록 폼화면 */
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String noticeInsertForm() {
		
		return "/admin/notice/insert";
	}
	
	
	/* 공지사항 등록처리 */
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String noticeInsertPost(Model model, Criteria cri, AdminBoardVO adBoardVO, String title, String contents, String registered_id) throws Exception {
		
		adBoardVO.setTitle(title);
		adBoardVO.setContents(contents);
		adBoardVO.setRegistered_id(registered_id);
		
		adminNoticeService.noticeInsert(adBoardVO);
		
		System.out.println("title : " + adBoardVO.getTitle() + ", contents : " + adBoardVO.getContents() + " , regi_id : " + adBoardVO.getRegistered_id()); 
		
		return "redirect:/admin/notice/list";    
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
