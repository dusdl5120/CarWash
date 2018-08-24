package kr.green.carwash.service.user;

import kr.green.carwash.vo.user.MemberVO;

public interface UserMemberService {
	
	/* 로그인 */ 
	public MemberVO loginById(String id) throws Exception;
	public MemberVO login(String id, String passwd) throws Exception;
	
	
	/* 회원가입 */
	public void insertUserJoin(MemberVO vo) throws Exception;
	
	
	/* 마이페이지 */
	public MemberVO myPageRead(MemberVO memberVO) throws Exception;
	public void myUpdateExceptPasswd(MemberVO vo) throws Exception;
	public void myUpdate(MemberVO vo) throws Exception;
	public void myDelete(MemberVO vo) throws Exception;

}
