package kr.green.carwash.service;

import kr.green.carwash.vo.LoginVO;

public interface LoginService {

	//public LoginVO login(LoginVO vo) throws Exception;
	public LoginVO loginById(String id) throws Exception;

}
