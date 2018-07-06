package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;

public interface AdminFreeBoardService {

	public int countBoard(Criteria cri);
	public List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception;
	public AdminFreeBoardVO boardRead(AdminFreeBoardVO vo) throws Exception;

}
