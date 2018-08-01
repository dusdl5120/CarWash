package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminNoticeVO {

	private Integer id;					// �Ϸù�ȣ
	private String admin_id;			// ������ID
	private String admin_name;			// �������̸�
	private String title;				// �Խñ� ����
	private String contents;			// �Խñ� ����
	private int cnt;					// ��ȸ��
	private Date registered_date;		// �ۼ��Ͻ�
	private String updated_id;			// ������ID
	private Date updated_date;			// �����Ͻ�
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
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
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
		return "AdminNoticeVO [id=" + id + ", admin_id=" + admin_id + ", admin_name=" + admin_name + ", title=" + title
				+ ", contents=" + contents + ", cnt=" + cnt + ", registered_date=" + registered_date + "]";
	}
	
}
