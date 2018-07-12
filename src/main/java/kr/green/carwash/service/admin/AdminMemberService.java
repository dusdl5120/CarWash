package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.vo.admin.AdminMemberVO;

public interface AdminMemberService {

	public List<AdminMemberVO> carwashInfo(String bsPlaceCode) throws Exception;



}
