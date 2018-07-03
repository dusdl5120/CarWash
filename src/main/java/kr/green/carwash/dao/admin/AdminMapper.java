package kr.green.carwash.dao.admin;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminBoardVO;

public interface AdminMapper {

	public int countNotice();
	public List<AdminBoardVO> noticeListPage(@Param("cri") Criteria cri); 

}
