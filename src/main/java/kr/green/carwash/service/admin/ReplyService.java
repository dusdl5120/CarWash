package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.vo.admin.ReplyVO;

public interface ReplyService {

	List<ReplyVO> replyList(Integer free_id) throws Exception;

}
