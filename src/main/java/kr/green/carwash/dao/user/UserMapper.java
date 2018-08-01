package kr.green.carwash.dao.user;

import org.springframework.stereotype.Repository;

import kr.green.carwash.vo.user.MemberVO;

@Repository("userMapper")
public interface UserMapper {

	/* 로그인 */
	public MemberVO loginById(String id) throws Exception;
	public MemberVO login(String id, String passwd) throws Exception;
	
	/* 회원가입 */
	public void insertUserJoin(MemberVO vo) throws Exception;;

}
