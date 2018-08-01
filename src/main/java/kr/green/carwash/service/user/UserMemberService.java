package kr.green.carwash.service.user;

import kr.green.carwash.vo.user.MemberVO;

public interface UserMemberService {
	
	/* �α��� */ 
	public MemberVO loginById(String id) throws Exception;
	public MemberVO login(String id, String passwd) throws Exception;
	
	/* ȸ������ */
	public void insertUserJoin(MemberVO vo) throws Exception;

}