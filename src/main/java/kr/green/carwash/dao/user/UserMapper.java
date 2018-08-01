package kr.green.carwash.dao.user;

import org.springframework.stereotype.Repository;

import kr.green.carwash.vo.user.MemberVO;

@Repository("userMapper")
public interface UserMapper {

	/* �α��� */
	public MemberVO loginById(String id) throws Exception;
	public MemberVO login(String id, String passwd) throws Exception;
	
	/* ȸ������ */
	public void insertUserJoin(MemberVO vo) throws Exception;;

}
