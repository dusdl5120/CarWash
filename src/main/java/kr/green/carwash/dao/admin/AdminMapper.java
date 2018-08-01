package kr.green.carwash.dao.admin;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.AdminNoticeVO;
import kr.green.carwash.vo.admin.ReplyVO;

@Repository("adminMapper")
public interface AdminMapper {

	/* �������� */
	public List<AdminNoticeVO> noticeListPage(Criteria cri) throws Exception;
	public List<AdminNoticeVO> searchNoticeListPage(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type) throws Exception;
	public int countNotice(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type);
	public void noticeInsert(AdminNoticeVO vo) throws Exception;
	public AdminNoticeVO noticeRead(AdminNoticeVO vo) throws Exception;
	public void noticeUpdate(AdminNoticeVO vo) throws Exception;
	public void noticeDelete(AdminNoticeVO vo) throws Exception;
	public int noticeCnt(AdminNoticeVO vo);
	
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

	/* ȸ������ */
	public List<AdminMemberVO> placeCodeAll() throws Exception;;	// ���������ڵ�� �ҷ�����
	public List<AdminMemberVO> carwashTypeAll() throws Exception;	// ���������� �ҷ�����
	public List<AdminMemberVO> closedDateAll()throws Exception;     // �޹��� �ҷ�����
	public void insertAdminJoin(AdminMemberVO vo) throws Exception;
	
	/* �α��� */
	public AdminMemberVO login(String id, String passwd) throws Exception;
	public AdminMemberVO loginById(String id) throws Exception;
	
	
	/* ID �ߺ�Ȯ�� */
	public boolean checkUser(String admin_id) throws Exception;
	
	
	/* ��� */
	public List<ReplyVO> replyList(Integer free_id) throws Exception;
	
	/* ���������� */
	public AdminMemberVO myPageRead(AdminMemberVO vo) throws Exception;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
