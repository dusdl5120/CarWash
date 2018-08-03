package kr.green.carwash.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminFreeBoardService;
import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.ReplyVO;

@Controller
@RequestMapping(value="/admin/free/*")
public class AdminFreeBoardController {

	@Resource(name="adminFreeBoardService")
	AdminFreeBoardService adminFreeBoardService;
	
	@Resource(name="replyService")
	ReplyService replyService;
	
	/*@Resource(name="uploadFileUtils")
	UploadFileUtils uploadFileUtils;
	
	@Resource
	private String uploadPath;*/
	
	/* 자유게시판 목록 */
	@RequestMapping(value="/list")
	public String freeBoardListPage(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, String search, Integer type, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		int totCnt = 0;
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		
		
		if (type == null) {
			type = 0;
		}
		
		ArrayList<AdminFreeBoardVO> list = (ArrayList) adminFreeBoardService.boardSearchListPage(pageMaker.getCriteria(), "%" + search + "%", type); 
		totCnt = adminFreeBoardService.searchCountBoard(cri, "%" + search + "%", type);
		pageMaker.setTotalCount(totCnt);
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");
		
		
		model.addAttribute("admin", admin);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("search", search);
		model.addAttribute("type", type);
		
		/*totCnt = adminFreeBoardService.countBoard(cri);
		pageMaker.setCriteria(cri);
		pageMaker.setTotalCount(totCnt);
		
		ArrayList<AdminFreeBoardVO> list = (ArrayList) adminFreeBoardService.boardListPage(pageMaker.getCriteria());
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");
  
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);*/
		
		return "/admin/free/list";
	}
	
	
	/* 자유게시판 게시글 등록 */
	@RequestMapping(value="insert", method=RequestMethod.GET)
	public String freeBoardInsert(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, HttpServletRequest request) throws Exception {
		 
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adFreeVO.setRegistered_id(user.getAdmin_id());
		
		model.addAttribute("adFreeVO", adFreeVO);
		model.addAttribute("admin", admin);
		
		return "/admin/free/insert";
	}
	
	
	/* 자유게시판 게시글 등록처리 */
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String freeBoardInsertPost(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, String title, String contents, String registered_id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		adFreeVO.setTitle(title);
		adFreeVO.setContents(contents);
		adFreeVO.setRegistered_id(user.getAdmin_id());
		
		model.addAttribute("adFreeVO", adFreeVO);
		
		adminFreeBoardService.freeInsert(adFreeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	/* 자유게시판 게시글 수정 */
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public String freeBoardUpdate(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, Integer id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adFreeVO.setRegistered_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		/* 상세정보 */
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(adFreeVO);
		model.addAttribute("board", board);
		
		return "/admin/free/update";
	}
	
	
	/* 자유게시판 게시글 정보 */
	@RequestMapping(value="/read", method= RequestMethod.GET)
	public String freeBoardRead(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		//adFreeVO.setRegistered_id(user.getAdmin_id());
		model.addAttribute("admin", admin);
		
		/* 조회수 증가 */
		adminFreeBoardService.freeBoardCnt(adFreeVO);
		
		/* 상세정보 */
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(adFreeVO);
		model.addAttribute("board", board);
		
		return "/admin/free/read";
	}
	
	
	/* 자유게시판 게시글 수정처리 */
	@RequestMapping(value="/update", method= RequestMethod.POST)
	public String freeBoardUpdatePost(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, Integer id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adFreeVO.setRegistered_id(user.getAdmin_id());
		
		System.out.println("========" + adFreeVO.getRegistered_id());
		System.out.println("========" + adFreeVO.getTitle());
		System.out.println("========" + adFreeVO.getContents());
		
		model.addAttribute("admin", admin);
		
		adminFreeBoardService.freeUpdate(adFreeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	/* 자유게시판 게시글 삭제 */
	@RequestMapping(value="/delete")
	public String freeBoardDeletePost(Model model, Criteria cri, AdminFreeBoardVO adFreeVO, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		adminFreeBoardService.freeDelete(adFreeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	
	
}
