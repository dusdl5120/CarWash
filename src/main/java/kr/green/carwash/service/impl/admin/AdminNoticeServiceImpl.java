package kr.green.carwash.service.impl.admin;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.service.admin.AdminNoticeService;
import kr.green.carwash.vo.admin.AdminNoticeVO;

@Service("adminNoticeService")
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;
	
	@Override
	public List<AdminNoticeVO> noticeListPage(Criteria cri) throws Exception {
		return adminMapper.noticeListPage(cri);
	}

	@Override
	public int countNotice(Criteria cri) {
		return adminMapper.countNotice(cri);
	}

	@Override
	public void noticeInsert(AdminNoticeVO vo) throws Exception {
		adminMapper.noticeInsert(vo);
	}

	@Override
	public AdminNoticeVO noticeRead(AdminNoticeVO vo) throws Exception { 
		AdminNoticeVO adBoardVO = adminMapper.noticeRead(vo);
		return adBoardVO;
	}

	@Override
	public void noticeUpdate(AdminNoticeVO vo) throws Exception {
		adminMapper.noticeUpdate(vo);
	}

	@Override
	public void noticeDelete(AdminNoticeVO vo) throws Exception {
		adminMapper.noticeDelete(vo);
	}

	@Override
	public int noticeCnt(AdminNoticeVO vo) {
		return adminMapper.noticeCnt(vo);
	}

}
