package kr.green.carwash.service.impl.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.dao.user.UserMapper;
import kr.green.carwash.service.user.ReserveService;
import kr.green.carwash.vo.user.ReserveVO;

@Service("reserveService")
public class ReserveServiceImpl implements ReserveService {

	@Resource(name="userMapper")
	UserMapper userMapper;
	
	@Override
	public List<ReserveVO> sidoListAll() throws Exception {
		return userMapper.sidoListAll();
	}

	@Override
	public List<ReserveVO> cityListAll() throws Exception {
		return userMapper.cityListAll();
	}

	@Override
	public List<ReserveVO> businNameListAll() throws Exception {
		return userMapper.businNameListAll();
	}

}
