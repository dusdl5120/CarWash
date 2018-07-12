package kr.green.carwash.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.admin.AdminNoticeVO;

//@Repository("adminMapper")
public interface AdminMapper {

	/* 공지사항 */
	public List<AdminNoticeVO> noticeListPage(Criteria cri) throws Exception;
	public int countNotice(Criteria cri);
	public void noticeInsert(AdminNoticeVO vo) throws Exception;
	public AdminNoticeVO noticeRead(AdminNoticeVO vo) throws Exception;
	public void noticeUpdate(AdminNoticeVO vo) throws Exception;
	public void noticeDelete(AdminNoticeVO vo) throws Exception;
	public int noticeCnt(AdminNoticeVO vo);
	
	/* 자유게시판 */
	public List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception;
	public int countBoard(Criteria cri);
	public AdminFreeBoardVO boardRead(AdminFreeBoardVO vo) throws Exception;
	public int freeBoardCnt(AdminFreeBoardVO vo);
	public void freeInsert(AdminFreeBoardVO vo) throws Exception;
	public void freeUpdate(AdminFreeBoardVO vo) throws Exception;
	public void freeDelete(AdminFreeBoardVO vo) throws Exception;

	/* 회원가입 */
	public List<AdminMemberVO> carwashInfo(String bsPlaceCode) throws Exception;
}
