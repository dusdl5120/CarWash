package kr.green.carwash.controller.admin.notice;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminNoticeVO;

@Controller
@RequestMapping(value="/admin/notice/*")
public class AdminNoticeController {

	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;
	
	/* 공지사항 목록 */
	@RequestMapping(value="/list", method= RequestMethod.GET)
	public String noticeListPage(Model model, Criteria cri, AdminNoticeVO adNoticeVO) throws Exception {
		
		int totCnt = adminNoticeService.countNotice(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		pageMaker.setTotalCount(totCnt);
		
		ArrayList<AdminNoticeVO> list = (ArrayList) adminNoticeService.noticeListPage(pageMaker.getCriteria());
		
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
	public String noticeInsertPost(Model model, Criteria cri, AdminNoticeVO adNoticeVO, String title, String contents, String registered_id) throws Exception {
		
		adNoticeVO.setTitle(title);
		adNoticeVO.setContents(contents);
		adNoticeVO.setRegistered_id(registered_id);
		
		adminNoticeService.noticeInsert(adNoticeVO);
		
		System.out.println("title : " + adNoticeVO.getTitle() + ", contents : " + adNoticeVO.getContents() + " , regi_id : " + adNoticeVO.getRegistered_id()); 
		
		return "redirect:/admin/notice/list";    
	}
	
	
	/* 공지사항 게시글 정보 */
	@RequestMapping(value="/read")
	public String noticeRead(Model model, AdminNoticeVO adNoticeVO) throws Exception {
		
		/* 조회수 증가 */
		adminNoticeService.noticeCnt(adNoticeVO);
		
		/* 게시글 상세정보 불러오기 */
		AdminNoticeVO board = adminNoticeService.noticeRead(adNoticeVO);
		model.addAttribute("board", board);
		
		return "/admin/notice/read";
	}
	
	
	/* 공지사항 게시글 수정 폼화면 */ 
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String noticeUpdateForm(Model model, AdminNoticeVO adNoticeVO, Integer id) throws Exception {
		
		AdminNoticeVO board = adminNoticeService.noticeRead(adNoticeVO);
		board.setId(id);
		
		System.out.println("=================== board : " + adNoticeVO.getId());

		model.addAttribute("board", board);
		return "/admin/notice/update";
	}
	
	
	/* 공지사항 게시글 수정처리 */ 
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String noticeUpdatePost(Model model, AdminNoticeVO adNoticeVO, Integer id) throws Exception {
 
		adminNoticeService.noticeUpdate(adNoticeVO);
		
		return "redirect:/admin/notice/list";
	}
	
	
	/* 공지사항 게시글 삭제 */
	@RequestMapping(value="/delete")
	public String noticeDelete(AdminNoticeVO adNoticeVO, Integer id) throws Exception {
		
		adminNoticeService.noticeDelete(adNoticeVO);
		
		return "redirect:/admin/notice/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
