package kr.green.carwash.service.admin;

import java.util.List;
import kr.green.carwash.vo.admin.AdminMemberVO;

public interface AdminMemberService {

	/* 회원가입 */
	public List<AdminMemberVO> placeCodeAll() throws Exception;
	public List<AdminMemberVO> carwashTypeAll() throws Exception;
	public List<AdminMemberVO> closedDateAll() throws Exception;
	public void insertAdminJoin(AdminMemberVO vo) throws Exception;

	/* 로그인 */
	public AdminMemberVO login(String id, String passwd) throws Exception;
	public AdminMemberVO loginById(String id) throws Exception;


}
