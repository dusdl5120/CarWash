package kr.green.carwash.service.impl.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminBoardVO;

@Service("adminNoticeService")
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;

	@Override
	public List<AdminBoardVO> noticeListPage(Criteria cri) throws Exception {
		return adminMapper.noticeListPage(cri);
	}

	@Override
	public int countNotice(Criteria cri) {
		return adminMapper.countNotice(cri);
	}

	@Override
	public void noticeInsert(AdminBoardVO adBoardVO) throws Exception {
		adminMapper.noticeInsert(adBoardVO);
	}
	
	
}
