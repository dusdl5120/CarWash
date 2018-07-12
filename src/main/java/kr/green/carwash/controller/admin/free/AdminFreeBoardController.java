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
	
	
	/* 자유게시판 게시글 등록 */
	@RequestMapping(value="insert", method=RequestMethod.GET)
	public String freeBoardInsert(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		 
		return "/admin/free/insert";
	}
	
	
	/* 자유게시판 게시글 등록처리 */
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String freeBoardInsertPost(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, String title, String contents, String registered_id, String file_name) throws Exception {
		 
		adFreeVO.setTitle(title);
		adFreeVO.setContents(contents);
		adFreeVO.setRegistered_id(registered_id);
		adFreeVO.setFile_name(file_name); 
		
		adminFreeBoardService.freeInsert(adFreeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	/* 자유게시판 게시글 수정 */
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public String freeBoardUpdate(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		
		/* 상세정보 */
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(adFreeVO);
		model.addAttribute("board", board);
		
		return "/admin/free/update";
	}
	
	
	/* 자유게시판 게시글 정보 */
	@RequestMapping(value="/read", method= RequestMethod.GET)
	public String freeBoardRead(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		
		/* 조회수 증가 */
		adminFreeBoardService.freeBoardCnt(adFreeVO);
		
		/* 상세정보 */
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(adFreeVO);
		
		model.addAttribute("board", board);
		
		return "/admin/free/read";
	}
	
	
	/* 자유게시판 게시글 수정처리 */
	@RequestMapping(value="/update", method= RequestMethod.POST)
	public String freeBoardUpdatePost(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		
		adminFreeBoardService.freeUpdate(adFreeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	/* 자유게시판 게시글 삭제 */
	@RequestMapping(value="/delete")
	public String freeBoardDeletePost(Model model, Criteria cri, AdminFreeBoardVO adFreeVO) throws Exception {
		
		adminFreeBoardService.freeDelete(adFreeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
