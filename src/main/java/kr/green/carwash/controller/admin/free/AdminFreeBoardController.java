package kr.green.carwash.controller.admin.free;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminFreeBoardService;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;

@Controller
@RequestMapping(value="/admin/free/*")
public class AdminFreeBoardController {

	@Resource(name="adminFreeBoardService")
	AdminFreeBoardService adminFreeBoardService;
	
	/* 자유게시판 목록 */
	@RequestMapping(value="/list", method= RequestMethod.GET)
	public String freeBoardListPage(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		
		int totCnt = adminFreeBoardService.countBoard(cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		pageMaker.setTotalCount(totCnt);
		
		ArrayList<AdminFreeBoardVO> list = (ArrayList) adminFreeBoardService.boardListPage(pageMaker.getCriteria());
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");
  
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/admin/free/list";
	}
	
	/* 자유게시판 게시글 정보 */
	@RequestMapping(value="/read", method= RequestMethod.GET)
	public String freeBoardRead(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(adFreeVO);
		
		model.addAttribute("board", board);
		
		return "/admin/free/read";
	}
	
	
	
	
	
	
	
	
	
	
}
