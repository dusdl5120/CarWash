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
}
