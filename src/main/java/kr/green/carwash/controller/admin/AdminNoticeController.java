package kr.green.carwash.controller.admin;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.experimental.theories.ParameterSignature;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.AdminNoticeVO;

@Controller
@RequestMapping(value="/admin/notice/*")
public class AdminNoticeController {

	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;
	
	/* 공지사항 목록 */
	@RequestMapping(value="/list")
	public String noticeListPage(Model model, Criteria cri, AdminNoticeVO adNoticeVO, String search, Integer type, HttpServletRequest request) throws Exception {
		
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
		
		//ArrayList<AdminNoticeVO> list = (ArrayList) adminNoticeService.noticeListPage(pageMaker.getCriteria());
		ArrayList<AdminNoticeVO> list = (ArrayList) adminNoticeService.searchNoticeListPage(pageMaker.getCriteria(), "%" + search + "%", type); 
		totCnt = adminNoticeService.countNotice(cri, "%" + search + "%", type);
		pageMaker.setTotalCount(totCnt);
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");
		
		Date date = new Date(); 
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String inputDate = (String)simpleDate.format(date); 
		
		boolean regDate[] = new boolean[list.size()];
		int cnt = 0;
		
		System.out.println("//////////////////////"+inputDate);
		
		for(AdminNoticeVO tmp : list) {
			
			String noticeDate = (String)simpleDate.format(tmp.getRegistered_date());
			
			if (inputDate.compareTo(noticeDate) == 0) {
				regDate[cnt++] = true;
			} 
			else
				regDate[cnt++] = false;
		}
		
		model.addAttribute("regDate", regDate);

		model.addAttribute("admin", admin);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("search", search);
		model.addAttribute("type", type);
		
		
		return "/admin/notice/list";
	}
	

	
	/* 공지사항 등록 폼화면 */
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String noticeInsertForm(Model model, HttpServletRequest request, AdminNoticeVO adNoticeVO) {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adNoticeVO.setAdmin_id(user.getAdmin_id());
		adNoticeVO.setAdmin_name("관리자"); 
		
		model.addAttribute("admin", admin);
		model.addAttribute("adNoticeVO", adNoticeVO);
		
		return "/admin/notice/insert";
	}
	
	
	/* 공지사항 등록처리 */
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String noticeInsertPost(Model model, Criteria cri, AdminNoticeVO adNoticeVO, String admin_id, String title, String contents, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adNoticeVO.setAdmin_id(user.getAdmin_id());
		adNoticeVO.setAdmin_name("관리자"); 
		adNoticeVO.setTitle(title);
		adNoticeVO.setContents(contents);
		
		adminNoticeService.noticeInsert(adNoticeVO);
		
		return "redirect:/admin/notice/list";    
	}
	
	
	/* 공지사항 게시글 정보 */
	@RequestMapping(value="/read")
	public String noticeRead(Model model, AdminNoticeVO adNoticeVO, String admin_id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		adNoticeVO.setAdmin_id(admin_id);
		adNoticeVO.setAdmin_name("관리자"); 
		
		model.addAttribute("admin", admin);
		model.addAttribute("adNoticeVO", adNoticeVO);
		
		/* 조회수 증가 */
		adminNoticeService.noticeCnt(adNoticeVO);
		
		/* 게시글 상세정보 불러오기 */
		AdminNoticeVO board = adminNoticeService.noticeRead(adNoticeVO);
		model.addAttribute("board", board);
		
		return "/admin/notice/read";
	}
	
	
	/* 공지사항 게시글 수정 폼화면 */ 
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String noticeUpdateForm(Model model, AdminNoticeVO adNoticeVO, Integer id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		AdminNoticeVO board = adminNoticeService.noticeRead(adNoticeVO);
		board.setId(id);
		
		System.out.println("=================== board : " + adNoticeVO.getId());
		
		board.setAdmin_id(user.getAdmin_id());
		board.setAdmin_name("관리자");
		
		model.addAttribute("admin", admin);
		model.addAttribute("board", board);
		
		return "/admin/notice/update";
	}
	
	
	/* 공지사항 게시글 수정처리 */ 
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String noticeUpdatePost(Model model, AdminNoticeVO adNoticeVO, Integer id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		adNoticeVO.setAdmin_id(user.getAdmin_id());
		
		System.out.println("========" + adNoticeVO.getAdmin_id());
		System.out.println("========" + adNoticeVO.getTitle());
		System.out.println("========" + adNoticeVO.getContents());
		
		adminNoticeService.noticeUpdate(adNoticeVO);
		
		return "redirect:/admin/notice/list";
	}
	
	
	/* 공지사항 게시글 삭제 */
	@RequestMapping(value="/delete")
	public String noticeDelete(Model model, AdminNoticeVO adNoticeVO, Integer id, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		model.addAttribute("adNoticeVO", adNoticeVO);
		
		adminNoticeService.noticeDelete(adNoticeVO);
		
		return "redirect:/admin/notice/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
