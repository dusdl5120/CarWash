package kr.green.carwash.service.impl.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.dao.admin.AdminMapper;
import kr.green.carwash.service.admin.ReplyService;
import kr.green.carwash.vo.admin.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {

	@Resource(name="adminMapper")
	AdminMapper adminMapper;

	@Override
	public List<ReplyVO> replyList(Integer freeNo, Criteria cri) throws Exception {
		return adminMapper.replyList(freeNo, cri);
	}

	@Override
	public int replyListCnt(Integer freeNo) {
		return adminMapper.replyListCnt(freeNo);
	}

	@Override
	public int replyInsert(ReplyVO reply) throws Exception {
		return adminMapper.replyInsert(reply);
	}

	@Override
	public int replyUpdate(ReplyVO reply) throws Exception {
		return adminMapper.replyUpdate(reply);
	}

	@Override
	public int replyDelete(Integer reply_no) throws Exception {
		return adminMapper.replyDelete(reply_no);
	}

	@Override
	public List<ReplyVO> replyPageList(Criteria cri, Integer freeNo) throws Exception {
		return adminMapper.replyPageList(cri, freeNo);
	}

	@Override
	public int replyListCnt(Criteria cri, Integer freeNo) {
		return adminMapper.replyListCnt(cri, freeNo);
	}

	

	
}
