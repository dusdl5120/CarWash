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
	
	
	/* ��� ��� */
	@ResponseBody
	@RequestMapping(value="/list")
	public HashMap<String,Object> replyList(Model model, Integer freeNo, Criteria cri) throws Exception {
		
		/* �����Խ��� �Ϸù�ȣ�� ����¡ó���ϴ� �Ű����� �޾Ƽ� list�� CNT�� ��� */
		ArrayList<ReplyVO> list = (ArrayList)replyService.replyList(freeNo, cri);
		int cnt = replyService.replyListCnt(cri, freeNo);
		
		/* HashMap���� String�� Object�� list�� CNT�� ������ map ��ü�� ���� */
		HashMap<String, Object> map = new HashMap();
		
		/* map�� list�� CNT�� ��� ȭ������� �Ѱ� */
		map.put("list", list);
		map.put("cnt",cnt);
		
		return  map;
	}
	
	
	/* ��� ����¡ ��� */
	@ResponseBody
	@RequestMapping(value="/replyPageList")
	public HashMap<String, Object> replyPageList(Model model, Criteria cri, ReplyVO replyVO, HttpServletRequest request, Integer freeNo) throws Exception {
		
		/* ���� �Ķ���ͷ� �Խ��ǹ�ȣ�� �޾ƿ;��� */
		
		/* ����¡ ��üī��Ʈ 0���� �ʱⰪ ����ְ� */
		int totCnt = 0;
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(cri);
		
		/* ��üī��Ʈ�� �ش�Խñۿ� ���� �����ī��Ʈ�� ������ ��
		   pageMaker�� ��üī��Ʈ�� ���� */
		totCnt = replyService.replyListCnt(cri, freeNo);	
		pageMaker.setTotalCount(totCnt);
		
		System.out.println("******** pageMaker : " + pageMaker + ", totCnt : " + totCnt + " ********");

		/* ����¡�� �ϴ� ����̱� ������ ��۸���� ���� �Ⱥҷ��͵� ��
		   hashMap���� Ű�� ���� ������ ��ü�� �������ְ� map�� Ű�� ���� ���� �� map�� ����.
		   ����Ÿ�Ե� hashMap���� ���ָ� OK */
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pageMaker", pageMaker);
		
		return map;
	}
	
	
	/* ��� ��� */
	@ResponseBody
	@RequestMapping(value="/insert")
	public int replyInsert(@RequestParam Integer freeNo, @RequestParam String short_reply, HttpServletRequest request, Model model) throws Exception {
		
		/* ����� �α��� ����(����) �������� */
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("user", user);
		model.addAttribute("admin", admin);
		
		/* ��� ��Ͻ� ���� SET */
		ReplyVO reply = new ReplyVO();
		
		reply.setFree_no(freeNo);
		reply.setShort_reply(short_reply);
		reply.setRegistered_id(user.getAdmin_id());
		
		/* ��۵�� ���� ȣ�� */
		replyService.replyInsert(reply);
		
		/* �����Խ��� ��Ͽ� ��� ���� ǥ���ϱ� ���� �۾�
		   : ����� ����� �� ��ۼ��� ������ �ҷ�����,
		     �ش�Խñ��� ��ۼ��� ����
		 
		 * �ϴ� �����Խ����� �Ϸù�ȣ�� �����ͼ� ��۸���� ������ ȣ���Ͽ�
		   �����Խ��� ��Ͽ� ��ۼ��� ǥ���� reply_cnt�� ��´� */
		int reply_cnt = replyService.replyListCnt(freeNo);
		
		/* �����Խ���VO freeVO��ü�� ���� �����Ͽ� �����Խ��� �Ϸù�ȣ�� �����ͼ� freeVO�� �����ϰ� */
		AdminFreeBoardVO freeVO = new AdminFreeBoardVO();
		freeVO.setId(freeNo);
		
		/* �����Խ��� �Ϸù�ȣ�� �������� ���񽺸� ȣ���Ͽ� freeVO�� ��Ƽ� 
		 * �Խ��ǿ� ǥ���� ��� �� reply_cnt�� �����Ѵ� */
		freeVO = adminFreeBoardService.boardRead(freeVO);
		freeVO.setReply_cnt(reply_cnt);
		
		/* ���������� freeVO�� ��Ҵ� ������ ������ �����Խ����� ������ ���� */
		adminFreeBoardService.freeUpdate(freeVO);
		
		
		return 1;
	}
	
	
	
	/* ��� ���� */
	@RequestMapping("/update")
	@ResponseBody
	private int replyUpdate(@RequestParam Integer reply_no, @RequestParam String short_reply, HttpServletRequest request, Model model) throws Exception {
		
		/* ����� �α��� ����(����) �������� */
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
	
	
	
	/* ��� ���� */
	@ResponseBody
	@RequestMapping(value="/delete")
	public int replyDelete( Integer reply_no, Integer freeNo, HttpServletRequest request, Model model) throws Exception {
		
		/* ����� �α��� ����(����) �������� */
		HttpSession session = request.getSession();
		AdminMemberVO user = (AdminMemberVO) session.getAttribute("user");
		
		boolean admin = false;
		if(user != null)
			admin = true;
		
		model.addAttribute("admin", admin);
		
		/* ��ۻ��� ���� ȣ�� */
		replyService.replyDelete(reply_no);
		
		/* �����Խ��� ��Ͽ� ��� ���� ǥ���ϱ� ���� �۾�
		   : ����� ������ �� ��ۼ��� ������ �ҷ�����,
		     �ش�Խñ��� ��ۼ��� ����
		 
		 * �ϴ� �����Խ����� �Ϸù�ȣ�� �����ͼ� ��۸���� ������ ȣ���Ͽ�
		 * �����Խ��� ��Ͽ� ��ۼ��� ǥ���� reply_cnt�� ��´� */
		int reply_cnt = replyService.replyListCnt(freeNo);
		
		/* �����Խ���VO freeVO��ü�� ���� �����Ͽ� �����Խ��� �Ϸù�ȣ�� �����ͼ� freeVO�� �����ϰ� */
		AdminFreeBoardVO freeVO = new AdminFreeBoardVO();
		freeVO.setId(freeNo);
		
		/* �����Խ��� �Ϸù�ȣ�� �������� ���񽺸� ȣ���Ͽ� freeVO�� ��Ƽ� 
		 * �Խ��ǿ� ǥ���� ��� �� reply_cnt�� �����Ѵ� */
		freeVO = adminFreeBoardService.boardRead(freeVO);
		freeVO.setReply_cnt(reply_cnt);
		
		/* ���������� freeVO�� ��Ҵ� ������ ������ �����Խ����� ������ ���� */
		adminFreeBoardService.freeUpdate(freeVO);
		
		
		return 1;
	}
	
	
	/* ��� ��� */
	@ResponseBody
	@RequestMapping(value="/popup")
	public HashMap<String,Object> replyPopup(Model model, Integer freeNo, Criteria cri) throws Exception {
		
		/* �����Խ��� �Ϸù�ȣ�� ����¡ó���ϴ� �Ű����� �޾Ƽ� list�� CNT�� ��� */
		ArrayList<ReplyVO> list = (ArrayList)replyService.replyList(freeNo, cri);
		int cnt = replyService.replyListCnt(cri, freeNo);
		
		/* HashMap���� String�� Object�� list�� CNT�� ������ map ��ü�� ���� */
		HashMap<String, Object> map = new HashMap();
		
		/* map�� list�� CNT�� ��� ȭ������� �Ѱ� */
		map.put("list", list);
		map.put("cnt",cnt);
		
		return  map;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
