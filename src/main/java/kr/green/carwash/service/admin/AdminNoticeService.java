package kr.green.carwash.service.admin;

import java.util.List;
import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminNoticeVO;

public interface AdminNoticeService {

	public List<AdminNoticeVO> noticeListPage(Criteria cri) throws Exception;
	public int countNotice(Criteria cri, String search, Integer type);
	public void noticeInsert(AdminNoticeVO vo) throws Exception;
	public AdminNoticeVO noticeRead(AdminNoticeVO vo) throws Exception;
	public void noticeUpdate(AdminNoticeVO vo) throws Exception;
	public void noticeDelete(AdminNoticeVO vo) throws Exception;
	public int noticeCnt(AdminNoticeVO vo) throws Exception;
	
	public List<AdminNoticeVO> searchNoticeListPage(Criteria cri, String search, Integer type) throws Exception;
	
	public List<AdminNoticeVO> noticeMainList(int cnt) throws Exception;

}
