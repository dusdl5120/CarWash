package kr.green.carwash.service.impl.user;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.dao.user.UserMapper;
import kr.green.carwash.service.user.UserMemberService;
import kr.green.carwash.vo.user.MemberVO;

@Service("userMemberService")
public class UserMemberServiceImpl implements UserMemberService {
	
	@Resource(name="userMapper")
	UserMapper userMapper;

	@Override
	public MemberVO loginById(String id) throws Exception {
		return userMapper.loginById(id);
	}

	@Override
	public MemberVO login(String id, String passwd) throws Exception {
		return userMapper.login(id, passwd);
	}

	@Override
	public void insertUserJoin(MemberVO vo) throws Exception {
		userMapper.insertUserJoin(vo);
		
	}

	@Override
	public MemberVO myPageRead(MemberVO memberVO) throws Exception {
		return userMapper.myPageRead(memberVO);
	}

	@Override
	public void myUpdateExceptPasswd(MemberVO vo) throws Exception {
		userMapper.myUpdateExceptPasswd(vo);
	}

	@Override
	public void myUpdate(MemberVO vo) throws Exception {
		userMapper.myUpdate(vo);
	}

	@Override
	public void myDelete(MemberVO vo) throws Exception {
		userMapper.myDelete(vo);
	}

}
