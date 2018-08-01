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
	public List<AdminMemberVO> placeCodeAll() throws Exception {
		return adminMapper.placeCodeAll();
	}

	@Override
	public List<AdminMemberVO> carwashTypeAll() throws Exception {
		return adminMapper.carwashTypeAll();
	}

	@Override
	public List<AdminMemberVO> closedDateAll() throws Exception {
		return adminMapper.closedDateAll();
	}

	@Override
	public void insertAdminJoin(AdminMemberVO vo) throws Exception {
		adminMapper.insertAdminJoin(vo);
	}

	@Override
	public AdminMemberVO login(String id, String passwd) throws Exception {
		return adminMapper.login(id, passwd);
	}

	@Override
	public AdminMemberVO loginById(String id) throws Exception {
		return adminMapper.loginById(id); 
	}

	@Override
	public AdminMemberVO myPageRead(AdminMemberVO vo) throws Exception {
		return adminMapper.myPageRead(vo);
	}


}
