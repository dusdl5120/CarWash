package kr.green.carwash.dao;

import org.springframework.stereotype.Repository;

import kr.green.carwash.vo.LoginVO;

@Repository("loginMapper")
public interface LoginMapper {

	//public LoginVO login(LoginVO vo) throws Exception;
	public LoginVO loginById(String id) throws Exception;

}
