package kr.green.carwash.dao.admin;

import java.util.List;
import org.springframework.stereotype.Repository;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminBoardVO;

@Repository("adminMapper")
public interface AdminMapper {

	public List<AdminBoardVO> noticeListPage(Criteria cri) throws Exception;
	public int countNotice(Criteria cri);
	public void noticeInsert(AdminBoardVO adBoardVO) throws Exception;

}
 