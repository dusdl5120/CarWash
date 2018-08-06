package kr.green.carwash.service.impl.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;

	@Override
	public List<ReplyVO> replyList(Integer freeNo) throws Exception {
		return adminMapper.replyList(freeNo);
	}

	@Override
	public int replyListCnt(Integer freeNo) {
		return adminMapper.replyListCnt(freeNo);
	}

	@Override
	public int replyInsert(ReplyVO reply) throws Exception {
		return adminMapper.replyInsert(reply);
	}

	
}
