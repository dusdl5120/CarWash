package kr.green.carwash.service.admin;

import java.util.List;
import kr.green.carwash.vo.admin.AdminMemberVO;

public interface AdminMemberService {

	/* ȸ������ */
	public List<AdminMemberVO> placeCodeAll() throws Exception;
	public List<AdminMemberVO> carwashTypeAll() throws Exception;
	public List<AdminMemberVO> closedDateAll() throws Exception;
	public void insertAdminJoin(AdminMemberVO vo) throws Exception;

	/* �α��� */
	public AdminMemberVO login(String id, String passwd) throws Exception;
	public AdminMemberVO loginById(String id) throws Exception;
	
	/* ���������� */
	public AdminMemberVO myPageRead(AdminMemberVO vo) throws Exception;
	public void myUpdate(AdminMemberVO vo) throws Exception;
	public void myDelete(AdminMemberVO vo) throws Exception;
	public void myUpdateExceptPasswd(AdminMemberVO vo) throws Exception;
	
	
	



}
