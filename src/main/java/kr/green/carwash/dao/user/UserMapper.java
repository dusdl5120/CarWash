package kr.green.carwash.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;
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
	public List<ReserveVO> categoryListAll() throws Exception;		/* �����з� ���� �ҷ����� */
	
	public List<ReserveVO> cityList(String sido) throws Exception;
	public List<ReserveVO> businNameList(@Param("sido") String sido, @Param("city") String city) throws Exception;
	
	public void reserveInsert(ReserveVO vo) throws Exception;
	public List<ReserveVO> reserveList(ReserveVO vo) throws Exception;
	public ReserveVO reserveRead(ReserveVO vo) throws Exception;
	public void reserveUpdate(ReserveVO vo) throws Exception;
	public void reserveDelete(ReserveVO vo) throws Exception;
	
	
	/* ���������� */
	public MemberVO myPageRead(MemberVO memberVO) throws Exception;
	public void myUpdateExceptPasswd(MemberVO vo) throws Exception;
	public void myUpdate(MemberVO vo) throws Exception;
	public void myDelete(MemberVO vo) throws Exception;
	 
	
	/* �����Խ��� */
	public List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception;
	public List<AdminFreeBoardVO> boardSearchListPage(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type);		// �˻����� ������ ����Ʈ
	public int searchCountBoard(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type);	 						// �˻����� ������ ����Ʈ ī��Ʈ
	public int countBoard(Criteria cri);
	public AdminFreeBoardVO boardRead(AdminFreeBoardVO vo) throws Exception;
	public int freeBoardCnt(AdminFreeBoardVO vo);
	public void freeInsert(AdminFreeBoardVO vo) throws Exception;
	public void freeUpdate(AdminFreeBoardVO vo) throws Exception;
	public void freeDelete(AdminFreeBoardVO vo) throws Exception;
	
	
	
	
	
	
	
	

}
