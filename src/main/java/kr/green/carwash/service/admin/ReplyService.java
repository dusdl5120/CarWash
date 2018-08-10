package kr.green.carwash.service.admin;

import java.util.List;

import kr.green.carwash.common.pagination.Criteria;
import kr.green.carwash.vo.admin.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> replyList(Integer freeNo, Criteria cri) throws Exception;
	public int replyListCnt(Integer freeNo);
	public int replyInsert(ReplyVO reply) throws Exception;
	public int replyUpdate(ReplyVO reply) throws Exception;
	public int replyDelete(Integer reply_no) throws Exception;
	
	/* ¥Ò±€∆‰¿Ã¬° */
	public List<ReplyVO> replyPageList(Criteria cri, Integer freeNo) throws Exception;
	public int replyListCnt(Criteria cri, Integer freeNo);
	
} 
