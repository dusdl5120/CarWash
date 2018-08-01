package kr.green.carwash.vo.admin;

import java.util.Date;

public class ReplyVO {

	private Integer reply_id;			// ��� �Ϸù�ȣ
	private Integer free_id;			// �Խñ� �Ϸù�ȣ
	private String registered_id;		// ��� �����ID
	private String updated_id;			// ��� ������ID
	private Date registered_date;		// ��� ����Ͻ�
	private Date updated_date;			// ��� �����Ͻ�
	
	
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
