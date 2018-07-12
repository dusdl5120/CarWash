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
	
	/* �������� ��� */
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
	
	/* �������� ��� ��ȭ�� */
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String noticeInsertForm() {
		
		return "/admin/notice/insert";
	}
	
	
	/* �������� ���ó�� */
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String noticeInsertPost(Model model, Criteria cri, AdminNoticeVO adNoticeVO, String title, String contents, String registered_id) throws Exception {
		
		adNoticeVO.setTitle(title);
		adNoticeVO.setContents(contents);
		adNoticeVO.setRegistered_id(registered_id);
		
		adminNoticeService.noticeInsert(adNoticeVO);
		
		System.out.println("title : " + adNoticeVO.getTitle() + ", contents : " + adNoticeVO.getContents() + " , regi_id : " + adNoticeVO.getRegistered_id()); 
		
		return "redirect:/admin/notice/list";    
	}
	
	
	/* �������� �Խñ� ���� */
	@RequestMapping(value="/read")
	public String noticeRead(Model model, AdminNoticeVO adNoticeVO) throws Exception {
		
		/* ��ȸ�� ���� */
		adminNoticeService.noticeCnt(adNoticeVO);
		
		/* �Խñ� ������ �ҷ����� */
		AdminNoticeVO board = adminNoticeService.noticeRead(adNoticeVO);
		model.addAttribute("board", board);
		
		return "/admin/notice/read";
	}
	
	
	/* �������� �Խñ� ���� ��ȭ�� */ 
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String noticeUpdateForm(Model model, AdminNoticeVO adNoticeVO, Integer id) throws Exception {
		
		AdminNoticeVO board = adminNoticeService.noticeRead(adNoticeVO);
		board.setId(id);
		
		System.out.println("=================== board : " + adNoticeVO.getId());

		model.addAttribute("board", board);
		return "/admin/notice/update";
	}
	
	
	/* �������� �Խñ� ����ó�� */ 
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String noticeUpdatePost(Model model, AdminNoticeVO adNoticeVO, Integer id) throws Exception {
 
		adminNoticeService.noticeUpdate(adNoticeVO);
		
		return "redirect:/admin/notice/list";
	}
	
	
	/* �������� �Խñ� ���� */
	@RequestMapping(value="/delete")
	public String noticeDelete(AdminNoticeVO adNoticeVO, Integer id) throws Exception {
		
		adminNoticeService.noticeDelete(adNoticeVO);
		
		return "redirect:/admin/notice/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
