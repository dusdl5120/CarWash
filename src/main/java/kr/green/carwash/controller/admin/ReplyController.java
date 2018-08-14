package kr.green.carwash.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.common.pagination.PageMaker;
import kr.green.carwash.service.admin.AdminFreeBoardService;
import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.ReplyVO;

@Controller
@RequestMapping(value="/reply/*")
public class ReplyController {
	
	@Resource(name="replyService")
	ReplyService replyService;
	
	@Resource(name="adminFreeBoardService")
	AdminFreeBoardService adminFreeBoardService;
	
	
	/* 댓글 목록 */
	@ResponseBody
	@RequestMapping(value="/list")
	public HashMap<String,Object> replyList(Model model, Integer freeNo, Criteria cri) throws Exception {
		
		/* 자유게시판 일련번호와 페이징처리하는 매개변수 받아서 list와 CNT로 담기 */
		ArrayList<ReplyVO> list = (ArrayList)replyService.replyList(freeNo, cri);
		int cnt = replyService.replyListCnt(cri, freeNo);
		
		/* HashMap으로 String과 Object로 list와 CNT를 저장할 map 객체를 생성 */
		HashMap<String, Object> map = new HashMap();
		
		/* map에 list와 CNT를 담고 화면단으로 넘겨 */
		map.put("list", list);
		map.put("cnt",cnt);
		
		return  map;
	}
	
	
	/* 댓글 페이징 목록 */
	@ResponseBody
	@RequestMapping(value="/replyPageList")
	public HashMap<String, Object> replyPageList(Model model, Criteria cri, ReplyVO replyVO, HttpServletRequest request, Integer freeNo) throws Exception {
		
		/* 위에 파라미터로 게시판번호도 받아와야함 */
		
		/* 페이징 전체카운트 0으로 초기값 잡아주고 */
		int totCnt = 0;
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		
		/* 전체카운트에 해당게시글에 대한 댓글총카운트를 저장한 후
		   pageMaker의 전체카운트에 저장 */
		totCnt = replyService.replyListCnt(cri, freeNo);	
		pageMaker.setTotalCount(totCnt);
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");

		/* 페이징만 하는 목록이기 때문에 댓글목록을 따로 안불러와도 됨
		   hashMap으로 키와 값을 저장할 객체를 생성해주고 map에 키와 값을 저장 후 map을 리턴.
		   리턴타입도 hashMap으로 해주면 OK */
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pageMaker", pageMaker);
		
		return map;
	}
	
	
	/* 댓글 등록 */
	@ResponseBody
	@RequestMapping(value="/insert")
	public int replyInsert(@RequestParam Integer freeNo, @RequestParam String short_reply, HttpServletRequest request, Model model) throws Exception {
		
		/* 사용자 로그인 정보(세션) 가져오기 */
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("user", user);
		model.addAttribute("admin", admin);
		
		/* 댓글 등록시 정보 SET */
		ReplyVO reply = new ReplyVO();
		
		reply.setFree_no(freeNo);
		reply.setShort_reply(short_reply);
		reply.setRegistered_id(user.getAdmin_id());
		
		/* 댓글등록 서비스 호출 */
		replyService.replyInsert(reply);
		
		/* 자유게시판 목록에 댓글 수를 표시하기 위한 작업
		   : 댓글을 등록한 후 댓글수의 정보를 불러오고,
		     해당게시글의 댓글수를 저장
		 
		 * 일단 자유게시판의 일련번호를 가져와서 댓글목록의 개수를 호출하여
		   자유게시판 목록에 댓글수를 표시할 reply_cnt에 담는다 */
		int reply_cnt = replyService.replyListCnt(freeNo);
		
		/* 자유게시판VO freeVO객체를 새로 생성하여 자유게시판 일련번호를 가져와서 freeVO에 저장하고 */
		AdminFreeBoardVO freeVO = new AdminFreeBoardVO();
		freeVO.setId(freeNo);
		
		/* 자유게시판 일련번호를 가져오는 서비스를 호출하여 freeVO에 담아서 
		 * 게시판에 표시할 댓글 수 reply_cnt를 저장한다 */
		freeVO = adminFreeBoardService.boardRead(freeVO);
		freeVO.setReply_cnt(reply_cnt);
		
		/* 마지막으로 freeVO에 담았던 정보를 가지고 자유게시판의 정보를 수정 */
		adminFreeBoardService.freeUpdate(freeVO);
		
		
		return 1;
	}
	
	
	
	/* 댓글 수정 */
	@RequestMapping("/update")
	@ResponseBody
	private int replyUpdate(@RequestParam Integer reply_no, @RequestParam String short_reply, HttpServletRequest request, Model model) throws Exception {
		
		/* 사용자 로그인 정보(세션) 가져오기 */
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		ReplyVO reply = new ReplyVO();
		reply.setReply_no(reply_no);
		reply.setShort_reply(short_reply); 
		

		return replyService.replyUpdate(reply);
	}
	
	
	
	/* 댓글 삭제 */
	@ResponseBody
	@RequestMapping(value="/delete")
	public int replyDelete( Integer reply_no, Integer freeNo, HttpServletRequest request, Model model) throws Exception {
		
		/* 사용자 로그인 정보(세션) 가져오기 */
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		/* 댓글삭제 서비스 호출 */
		replyService.replyDelete(reply_no);
		
		/* 자유게시판 목록에 댓글 수를 표시하기 위한 작업
		   : 댓글을 삭제한 후 댓글수의 정보를 불러오고,
		     해당게시글의 댓글수를 저장
		 
		 * 일단 자유게시판의 일련번호를 가져와서 댓글목록의 개수를 호출하여
		 * 자유게시판 목록에 댓글수를 표시할 reply_cnt에 담는다 */
		int reply_cnt = replyService.replyListCnt(freeNo);
		
		/* 자유게시판VO freeVO객체를 새로 생성하여 자유게시판 일련번호를 가져와서 freeVO에 저장하고 */
		AdminFreeBoardVO freeVO = new AdminFreeBoardVO();
		freeVO.setId(freeNo);
		
		/* 자유게시판 일련번호를 가져오는 서비스를 호출하여 freeVO에 담아서 
		 * 게시판에 표시할 댓글 수 reply_cnt를 저장한다 */
		freeVO = adminFreeBoardService.boardRead(freeVO);
		freeVO.setReply_cnt(reply_cnt);
		
		/* 마지막으로 freeVO에 담았던 정보를 가지고 자유게시판의 정보를 수정 */
		adminFreeBoardService.freeUpdate(freeVO);
		
		
		return 1;
	}
	
	
	/* 댓글 목록 */
	@ResponseBody
	@RequestMapping(value="/popup")
	public HashMap<String,Object> replyPopup(Model model, Integer freeNo, Criteria cri) throws Exception {
		
		/* 자유게시판 일련번호와 페이징처리하는 매개변수 받아서 list와 CNT로 담기 */
		ArrayList<ReplyVO> list = (ArrayList)replyService.replyList(freeNo, cri);
		int cnt = replyService.replyListCnt(cri, freeNo);
		
		/* HashMap으로 String과 Object로 list와 CNT를 저장할 map 객체를 생성 */
		HashMap<String, Object> map = new HashMap();
		
		/* map에 list와 CNT를 담고 화면단으로 넘겨 */
		map.put("list", list);
		map.put("cnt",cnt);
		
		return  map;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
