package kr.green.carwash.controller.user;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminFreeBoardService;
import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
@RequestMapping(value="/user/free/*")
public class UserFreeBoardController {

	@Resource(name="adminFreeBoardService")
	AdminFreeBoardService adminFreeBoardService;
	
	@Resource(name="replyService")
	ReplyService replyService;
	
	
	/* 자유게시판 목록 */
	@RequestMapping(value="/list")
	public String freeBoardListPage(Model model, Criteria cri, AdminFreeBoardVO freeVO, String search, Integer type, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
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
		
		Date date = new Date(); 
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String inputDate = (String)simpleDate.format(date); 
		
		boolean regDate[] = new boolean[list.size()];
		int cnt = 0;
		
		System.out.println("//////////////////////"+inputDate);
		
		for(AdminFreeBoardVO tmp : list) {
			
			String freeDate = (String)simpleDate.format(tmp.getRegistered_date());
			
			if (inputDate.compareTo(freeDate) == 0) {
				regDate[cnt++] = true;
			} 
			else
				regDate[cnt++] = false;
		}
		
		model.addAttribute("regDate", regDate);
		
		model.addAttribute("users", admin);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("search", search);
		model.addAttribute("type", type);
		
		return "/user/free/list";
	}
	
	
	/* 자유게시판 게시글 등록 */
	@RequestMapping(value="insert", method=RequestMethod.GET)
	public String freeBoardInsert(Model model, Criteria cri, AdminFreeBoardVO freeVO, HttpServletRequest request) throws Exception {
		 
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		freeVO.setRegistered_id(user.getUser_id());
		
		model.addAttribute("freeVO", freeVO);
		model.addAttribute("users", admin);
		
		return "/user/free/insert";
	}
	
	
	/* 자유게시판 게시글 등록처리 */
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String freeBoardInsertPost(Model model, Criteria cri, AdminFreeBoardVO freeVO, String title, String contents, String registered_id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("users", admin);
		
		freeVO.setTitle(title);
		freeVO.setContents(contents);
		freeVO.setRegistered_id(user.getUser_id());
		
		model.addAttribute("freeVO", freeVO);
		
		adminFreeBoardService.freeInsert(freeVO);
		
		return "redirect:/user/free/list";
	}
	
	
	/* 자유게시판 게시글 수정 */
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public String freeBoardUpdate(Model model, Criteria cri, AdminFreeBoardVO freeVO, Integer id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		freeVO.setRegistered_id(user.getUser_id());
		model.addAttribute("users", admin);
		
		/* 상세정보 */
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(freeVO);
		model.addAttribute("board", board);
		
		return "/user/free/update";
	}
	
	
	/* 자유게시판 게시글 정보 */
	@RequestMapping(value="/read", method= RequestMethod.GET)
	public String freeBoardRead(Model model, Criteria cri, AdminFreeBoardVO freeVO, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		//freeVO.setRegistered_id(user.getAdmin_id());
		model.addAttribute("user", user);
		model.addAttribute("admin", admin);
		
		/* 조회수 증가 */
		adminFreeBoardService.freeBoardCnt(freeVO);
		
		/* 상세정보 */
		AdminFreeBoardVO board = adminFreeBoardService.boardRead(freeVO);
		model.addAttribute("board", board);
		
		return "/user/free/read";
	}
	
	
	/* 자유게시판 게시글 수정처리 */
	@RequestMapping(value="/update", method= RequestMethod.POST)
	public String freeBoardUpdatePost(Model model, Criteria cri, AdminFreeBoardVO freeVO, Integer id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		freeVO.setRegistered_id(user.getUser_id());
		
		adminFreeBoardService.freeUpdate(freeVO);
		
		model.addAttribute("users", admin);
		
		return "redirect:/user/free/list";
	}
	
	
	/* 자유게시판 게시글 삭제 */
	@RequestMapping(value="/delete")
	public String freeBoardDeletePost(Model model, Criteria cri, AdminFreeBoardVO freeVO, HttpServletRequest request, Integer id) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		adminFreeBoardService.freeDelete(freeVO);
		
		return "redirect:/admin/free/list";
	}
	
	
	
	
}
