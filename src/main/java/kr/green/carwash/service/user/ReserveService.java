package kr.green.carwash.service.user;

import java.util.List;

import kr.green.carwash.vo.user.ReserveVO;

public interface ReserveService {

	public List<ReserveVO> sidoListAll() throws Exception;
	public List<ReserveVO> cityListAll() throws Exception;
	public List<ReserveVO> businNameListAll() throws Exception;

}
