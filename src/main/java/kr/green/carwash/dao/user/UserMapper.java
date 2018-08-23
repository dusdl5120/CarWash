package kr.green.carwash.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	public List<ReserveVO> categoryListAll() throws Exception;		/* 차량분류 정보 불러오기 */
	
	public List<ReserveVO> cityList(String sido) throws Exception;
	public List<ReserveVO> businNameList(@Param("sido") String sido, @Param("city") String city) throws Exception;
	
	public void reserveInsert(ReserveVO vo) throws Exception;
	public List<ReserveVO> reserveList(ReserveVO vo) throws Exception;
	public ReserveVO reserveRead(ReserveVO vo) throws Exception;
	public void reserveUpdate(ReserveVO vo) throws Exception;
	public void reserveDelete(ReserveVO vo) throws Exception;
	 
	
	
	
	
	
	
	
	
	
	

}
