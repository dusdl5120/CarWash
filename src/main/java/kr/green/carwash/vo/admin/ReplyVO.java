package kr.green.carwash.vo.admin;

import java.util.Date;

public class ReplyVO {

	private Integer reply_no;			// 댓글 일련번호
	private Integer free_no;			// 게시글 일련번호
	private String contents; 			// 댓글 내용
	private String registered_id;		// 댓글 등록자ID
	private Date registered_date;		// 댓글 등록일시
	private String updated_id;			// 댓글 수정자ID
	private Date updated_date;			// 댓글 수정일시
	
	
	public Integer getReply_no() {
		return reply_no;
	}
	public void setReply_no(Integer reply_no) {
		this.reply_no = reply_no;
	}
	public Integer getFree_no() {
		return free_no;
	}
	public void setFree_no(Integer free_no) {
		this.free_no = free_no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegistered_id() {
		return registered_id;
	}
	public void setRegistered_id(String registered_id) {
		this.registered_id = registered_id;
	}
	public Date getRegistered_date() {
		return registered_date;
	}
	public void setRegistered_date(Date registered_date) {
		this.registered_date = registered_date;
	}
	public String getUpdated_id() {
		return updated_id;
	}
	public void setUpdated_id(String updated_id) {
		this.updated_id = updated_id;
	}
	public Date getUpdated_date() {
		return updated_date;
	}
	public void setUpdated_date(Date updated_date) {
		this.updated_date = updated_date;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [reply_no=" + reply_no + ", free_no=" + free_no + ", contents=" + contents + ", registered_id="
				+ registered_id + ", registered_date=" + registered_date + "]";
	}
	
	
}
