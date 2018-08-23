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

	@Override
	public List<ReserveVO> categoryListAll() throws Exception {
		return userMapper.categoryListAll();
	}

	@Override
	public List<ReserveVO> cityList(String sido) throws Exception {
		return userMapper.cityList(sido);
	}

	@Override
	public List<ReserveVO> businNameList(String sido, String city) throws Exception {
		return userMapper.businNameList(sido, city); 
	}

	
	@Override
	public void reserveInsert(ReserveVO vo) throws Exception {
		userMapper.reserveInsert(vo);
	}

	@Override
	public List<ReserveVO> reserveList(ReserveVO vo) throws Exception {
		return userMapper.reserveList(vo); 
	}

	@Override
	public ReserveVO reserveRead(ReserveVO vo) throws Exception {
		return userMapper.reserveRead(vo); 
	}

	@Override
	public void reserveUpdate(ReserveVO vo) throws Exception {
		userMapper.reserveUpdate(vo);
	}

	@Override
	public void reserveDelete(ReserveVO vo) throws Exception {
		userMapper.reserveDelete(vo);
	}
}
