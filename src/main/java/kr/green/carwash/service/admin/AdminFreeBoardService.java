package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;

public interface AdminFreeBoardService {

	int countBoard(Criteria cri);
	List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception;

}
