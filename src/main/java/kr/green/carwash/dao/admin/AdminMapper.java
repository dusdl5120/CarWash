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

	/* 공지사항 */
	public List<AdminNoticeVO> noticeListPage(Criteria cri) throws Exception;
	public List<AdminNoticeVO> searchNoticeListPage(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type) throws Exception;
	public int countNotice(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type);
	public void noticeInsert(AdminNoticeVO vo) throws Exception;
	public AdminNoticeVO noticeRead(AdminNoticeVO vo) throws Exception;
	public void noticeUpdate(AdminNoticeVO vo) throws Exception;
	public void noticeDelete(AdminNoticeVO vo) throws Exception;
	public int noticeCnt(AdminNoticeVO vo);
	
	/* 자유게시판 */
	public List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception;
	public List<AdminFreeBoardVO> boardSearchListPage(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type);		// 검색조건 포함한 리스트
	public int searchCountBoard(@Param("cri") Criteria cri, @Param("search") String search, @Param("type") Integer type);	 						// 검색조건 포함한 리스트 카운트
	public int countBoard(Criteria cri);
	public AdminFreeBoardVO boardRead(AdminFreeBoardVO vo) throws Exception;
	public int freeBoardCnt(AdminFreeBoardVO vo);
	public void freeInsert(AdminFreeBoardVO vo) throws Exception;
	public void freeUpdate(AdminFreeBoardVO vo) throws Exception;
	public void freeDelete(AdminFreeBoardVO vo) throws Exception;

	/* 회원가입 */
	public List<AdminMemberVO> placeCodeAll() throws Exception;;	// 사업장업종코드명 불러오기
	public List<AdminMemberVO> carwashTypeAll() throws Exception;	// 세차유형명 불러오기
	public List<AdminMemberVO> closedDateAll()throws Exception;     // 휴무일 불러오기
	public void insertAdminJoin(AdminMemberVO vo) throws Exception;
	
	/* 로그인 */
	public AdminMemberVO login(String id, String passwd) throws Exception;
	public AdminMemberVO loginById(String id) throws Exception;
	
	
	/* ID 중복확인 */
	public boolean checkUser(String admin_id) throws Exception;
	
	
	/* 댓글 */
	public List<ReplyVO> replyList(Integer free_id) throws Exception;
	
	/* 마이페이지 */
	public AdminMemberVO myPageRead(AdminMemberVO vo) throws Exception;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
