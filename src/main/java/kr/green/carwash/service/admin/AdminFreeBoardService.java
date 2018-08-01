package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.AdminFreeBoardVO;

public interface AdminFreeBoardService {

	public int countBoard(Criteria cri);
	public List<AdminFreeBoardVO> boardListPage(Criteria cri) throws Exception;
	public List<AdminFreeBoardVO> boardSearchListPage(Criteria cri, String search, Integer type) throws Exception;			// �˻����� ������ ����Ʈ
	public int searchCountBoard(Criteria cri, String search, Integer type); 												// �˻����� ������ ����Ʈ ī��Ʈ
	public AdminFreeBoardVO boardRead(AdminFreeBoardVO vo) throws Exception;
	public int freeBoardCnt(AdminFreeBoardVO vo) throws Exception;
	public void freeInsert(AdminFreeBoardVO vo) throws Exception;
	public void freeUpdate(AdminFreeBoardVO vo) throws Exception;
	public void freeDelete(AdminFreeBoardVO vo) throws Exception;
	
	

}
