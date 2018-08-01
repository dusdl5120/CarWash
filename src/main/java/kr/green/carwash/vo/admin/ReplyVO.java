package kr.green.carwash.vo.admin;

import java.util.Date;

public class ReplyVO {

	private Integer reply_id;			// 댓글 일련번호
	private Integer free_id;			// 게시글 일련번호
	private String registered_id;		// 댓글 등록자ID
	private String updated_id;			// 댓글 수정자ID
	private Date registered_date;		// 댓글 등록일시
	private Date updated_date;			// 댓글 수정일시
	
	
	public Integer getReply_id() {
		return reply_id;
	}
	public void setReply_id(Integer reply_id) {
		this.reply_id = reply_id;
	}
	public Integer getFree_id() {
		return free_id;
	}
	public void setFree_id(Integer free_id) {
		this.free_id = free_id;
	}
	public String getRegistered_id() {
		return registered_id;
	}
	public void setRegistered_id(String registered_id) {
		this.registered_id = registered_id;
	}
	public String getUpdated_id() {
		return updated_id;
	}
	public void setUpdated_id(String updated_id) {
		this.updated_id = updated_id;
	}
	public Date getRegistered_date() {
		return registered_date;
	}
	public void setRegistered_date(Date registered_date) {
		this.registered_date = registered_date;
	}
	public Date getUpdated_date() {
		return updated_date;
	}
	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}
	
	
	@Override
	public String toString() {
		return "ReplyVO [reply_id=" + reply_id + ", free_id=" + free_id + ", registered_id=" + registered_id + "]";
	}

	
}
