package kr.green.carwash.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.dao.LoginMapper;
import kr.green.carwash.vo.LoginVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Resource(name="loginMapper")
	LoginMapper loginMapper;

	/*@Override
	public LoginVO login(LoginVO vo) throws Exception {
		return loginMapper.login(vo);
	}*/

	@Override
	public LoginVO loginById(String id) throws Exception {
		return loginMapper.loginById(id);
	}

}
