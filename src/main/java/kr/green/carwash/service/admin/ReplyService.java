package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.vo.admin.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> replyList(Integer freeNo) throws Exception;
	public int replyListCnt(Integer freeNo);

}
