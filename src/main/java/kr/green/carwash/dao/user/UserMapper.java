package kr.green.carwash.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.green.carwash.vo.user.MemberVO;
import kr.green.carwash.vo.user.ReserveVO;

@Repository("userMapper")
public interface UserMapper {

	/* 로그인 */
	public MemberVO loginById(String id) throws Exception;
	public MemberVO login(String id, String passwd) throws Exception;
	
	
	/* 회원가입 */
	public void insertUserJoin(MemberVO vo) throws Exception;
	
	
	/* 예약하기 */
	public List<ReserveVO> sidoListAll() throws Exception;			/* 시도명 정보 불러오기 */
	public List<ReserveVO> cityListAll() throws Exception;			/* 시군구명 정보 불러오기 */
	public List<ReserveVO> businNameListAll() throws Exception;		/* 사업장명 정보 불러오기 */
	
	
	
	
	
	
	
	
	
	
	

}
