package kr.green.carwash.service.impl.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.service.admin.AdminMemberService;
import kr.green.carwash.vo.admin.AdminMemberVO;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;

	@Override
	public List<AdminMemberVO> carwashInfo(String bsPlaceCode) throws Exception {
		return adminMapper.carwashInfo(bsPlaceCode);
	}

	@Override
	public List<AdminMemberVO> carwashInfoAll() throws Exception {
		// TODO Auto-generated method stub
		return adminMapper.carwashInfoAll();
	}

	

}
