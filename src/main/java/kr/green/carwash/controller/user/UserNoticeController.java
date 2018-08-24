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

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminNoticeVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
@RequestMapping(value="/user/notice/*")
public class UserNoticeController {

	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;
	
	/* 공지사항 목록 */
	@RequestMapping(value="/list")
	public String noticeListPage(Model model, Criteria cri, AdminNoticeVO noticeVO, String search, Integer type, HttpServletRequest request) throws Exception {
		
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

		model.addAttribute("users", admin);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("search", search);
		model.addAttribute("type", type);
		
		
		return "/user/notice/list";
	}
	

	/* 공지사항 게시글 정보 */
	@RequestMapping(value="/read")
	public String noticeRead(Model model, AdminNoticeVO noticeVO, String admin_id, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		noticeVO.setAdmin_id(admin_id);
		noticeVO.setAdmin_name("관리자"); 
		
		model.addAttribute("users", admin);
		model.addAttribute("noticeVO", noticeVO);
		
		/* 조회수 증가 */
		adminNoticeService.noticeCnt(noticeVO);
		
		/* 게시글 상세정보 불러오기 */
		AdminNoticeVO board = adminNoticeService.noticeRead(noticeVO);
		model.addAttribute("board", board);
		
		return "/user/notice/read";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
