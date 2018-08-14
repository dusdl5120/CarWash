package kr.green.carwash.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.green.carwash.vo.user.MemberVO;
import kr.green.carwash.vo.user.ReserveVO;

@Repository("userMapper")
public interface UserMapper {

	/* �α��� */
	public MemberVO loginById(String id) throws Exception;
	public MemberVO login(String id, String passwd) throws Exception;
	
	
	/* ȸ������ */
	public void insertUserJoin(MemberVO vo) throws Exception;
	
	
	/* �����ϱ� */
	public List<ReserveVO> sidoListAll() throws Exception;			/* �õ��� ���� �ҷ����� */
	public List<ReserveVO> cityListAll() throws Exception;			/* �ñ����� ���� �ҷ����� */
	public List<ReserveVO> businNameListAll() throws Exception;		/* ������ ���� �ҷ����� */
	
	
	
	
	
	
	
	
	
	
	

}
