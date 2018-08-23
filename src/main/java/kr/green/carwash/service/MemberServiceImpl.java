package kr.green.carwash.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.dao.user.UserMapper;
import kr.green.carwash.vo.admin.AdminMemberVO;
import kr.green.carwash.vo.user.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;
	
	@Resource(name="userMapper")
	UserMapper userMapper;
	
	@Override
	public Object getLoginInfo(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		Integer mode = (Integer)session.getAttribute("mode");
		
		Object user = null;
		
		if (mode == null)
			return null;
		
		/* 包府磊技记 */
		if (mode == 0) {
			user = (AdminMemberVO) session.getAttribute("user");

		/* 荤侩磊技记 */
		} else if (mode == 1) {
			user = (MemberVO) session.getAttribute("user");

		}
		
		return user;
	}

}
