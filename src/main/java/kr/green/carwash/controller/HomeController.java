package kr.green.carwash.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.carwash.service.MemberService;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.AdminNoticeVO;
import kr.green.carwash.vo.user.MemberVO;

@Controller
public class HomeController {
	
	@Resource(name="adminNoticeService")
	AdminNoticeService adminNoticeService;
	
	@Resource(name="memberService")
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	/* indexȭ�� */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String adminHome(Model model, HttpServletRequest request, AdminNoticeVO adNoticeVO) throws Exception { 
		
		/* ���������� ��������� �Ǻ��ϴ� ������, �����ڰ� �ƴѰɷ� �ʱⰪ ���� */
		boolean admin = false;
		
		/* �������� ��� 3���� �������� */
		ArrayList<AdminNoticeVO> list = (ArrayList) adminNoticeService.noticeMainList(3); 
		model.addAttribute("list", list);
		
		/* �������� ���� ���� ���� ��¥�� ��ϵ� ���� NEW ǥ�ø� �ϱ� ���� ��¥Ŭ����.
		 * SimpleDateFormat Ŭ������ �̿��Ͽ� ��¥���������� YYYY-MM-DD�� ǥ��,
		 * ���糯¥������ �����ͼ� INPUTDATE ������ ���� */
		Date date = new Date(); 
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String inputDate = (String)simpleDate.format(date); 
		
		/* �������� ����Ʈ������ŭ REGDATE ������ ������ �迭���� */
		boolean regDate[] = new boolean[list.size()];
		
		/* ���� FOR������ INDEX��� CNT����Ͽ� �ʱⰪ 0���� ���� */
		int cnt = 0;
		
		/* LIST�� �ִ� ������ �ϳ��� ������ ��������VO ��ü TMP�� ���� */
		for(AdminNoticeVO tmp : list) {
			
			/* ��¥������ KST ~��� �Ǿ��ִ� �κ��� SIMPLEDATE���� �������� 
			 * YYYY-MM-DD ���ڿ��������� ����ȯ�Ͽ� NOTICEDATE�� ���� */
			String noticeDate = (String)simpleDate.format(tmp.getRegistered_date());
			
			/* ���糯¥�� �ۼ��ѳ�¥�� ���ؼ� ������� REGDATE�� TRUE��,
			 * ���� ������� FALSE�� */
			if (inputDate.compareTo(noticeDate) == 0) {
				regDate[cnt++] = true;
			} 
			else
				regDate[cnt++] = false;
		}
		
		/* ����ڿ� �������� ���� ������ �������� */
		Object user = memberService.getLoginInfo(request);		 
		
		/* ������ ������ ������ AdminMemberVO(������) ��ü�� ����ȯ�� �����ϰ�, ������ ������ ���� ���� ��� */
		if( user instanceof AdminMemberVO && user != null) {	 
			
			admin = true;
			model.addAttribute("regDate", regDate);
			
			/* ���������� ����������� ���� �� ������!! */
			model.addAttribute("admin", admin);
			
			/* �������� ������ USER���� */
			model.addAttribute("user",user);
			return "/index";
		
		
		} else if (user instanceof MemberVO && user != null) {
			
			admin = true;
			model.addAttribute("regDate", regDate);
			
			/* ���������� ����������� ���� �� �����!! */
			model.addAttribute("users", admin);
			
			/* �������� ������ USER���� */
			model.addAttribute("user",user);
			return "/index";
		}
		
		/* REGDATE�� BOOLEAN���� JSP�� ���� */	
		model.addAttribute("regDate", regDate);
		
		return "/index";	
	}
	
	
	
	
}
