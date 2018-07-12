package kr.green.carwash.service.impl.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.service.admin.AdminFreeBoardService;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;

@Service("adminFreeBoardService")
public class AdminFreeBoardServiceImpl implements AdminFreeBoardService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;

	@Override
	public int countBoard(Criteria cri) {
		return adminMapper.countBoard(cri);
	}

	@Override
	public List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception {
		return adminMapper.boardListPage(cri);
	}

	@Override
	public AdminFreeBoardVO boardRead(AdminFreeBoardVO vo) throws Exception {
		return adminMapper.boardRead(vo);
	}

	@Override
	public int freeBoardCnt(AdminFreeBoardVO vo) throws Exception {
		return adminMapper.freeBoardCnt(vo);
	}

	@Override
	public void freeInsert(AdminFreeBoardVO vo) throws Exception {
		adminMapper.freeInsert(vo);
	}

	@Override
	public void freeUpdate(AdminFreeBoardVO vo) throws Exception {
		adminMapper.freeUpdate(vo);
	}

	@Override
	public void freeDelete(AdminFreeBoardVO vo) throws Exception {
		adminMapper.freeDelete(vo);
	}

	
	
}
