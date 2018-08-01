package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminFreeBoardVO {

	private Integer id;					// 일련번호
	private String title;				// 게시글 제목
	private String contents;			// 게시글 내용
    private String reply;				// 한줄평
    private int reply_cnt;				// 리스트에 뿌려줄 댓글 수
	private int cnt;					// 조회수
    private String registered_id;		// 작성자ID
	private String updated_id;			// 수정자ID
	private Date registered_date;		// 작성일시
	private Date updated_date;			// 수정일시
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public int getReply_cnt() {
		return reply_cnt;
	}
	public void setReply_cnt(int reply_cnt) {
		this.reply_cnt = reply_cnt;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
		return "AdminFreeBoardVO [id=" + id + ", title=" + title + ", contents=" + contents + ", reply=" + reply
				+ ", reply_cnt=" + reply_cnt + ", cnt=" + cnt + "]";
	}
	
}
