package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminBoardVO;

public interface AdminNoticeService {

	public List<AdminBoardVO> noticeListPage(Criteria cri) throws Exception;
	public int countNotice(Criteria cri);
	public void noticeInsert(AdminBoardVO adBoardVO) throws Exception;

} 
