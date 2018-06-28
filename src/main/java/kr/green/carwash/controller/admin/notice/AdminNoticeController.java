package kr.green.carwash.controller.admin.notice;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.dao.admin.AdminNoticeMapper;
import kr.green.carwash.vo.admin.AdminBoardVO;

@Controller
@RequestMapping(value="/admin/notice/*")
public class AdminNoticeController {
	
	@Autowired
	AdminNoticeMapper adminNoticeMapper;

	// 공지사항 목록
	@RequestMapping(value="/list", method= RequestMethod.GET)
	public String noticeListPage(Model model, Criteria cri) {
		
		int totCnt = adminNoticeMapper.countNotice();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		pageMaker.setTotalCount(totCnt);
		
		System.out.println("//////////" + totCnt);
		ArrayList<AdminBoardVO> list = (ArrayList) adminNoticeMapper.listPage(pageMaker.getCriteria());
		
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/notice/list";
	}
}
