package kr.green.carwash.vo.user;

import java.util.Date;

public class MemberVO {
	
	private String user_id;					// �����ID
	private String user_name;				// ������̸�
	private String user_passwd;				// ��й�ȣ
	private String address;					// ���θ��ּ�
	private Integer zip_code;				// �����ȣ
	private Date birth;						// �������
	private String phoneNumber;				// �޴�����ȣ
	private String email;					// �̸����ּ�
	private String phoneCheckYn;			// SMS���ſ���
	private String emailCheckYn;			// �̸��ϼ��ſ���
	private Date registered_date;			// ����Ͻ�
	private Date updated_date;				// �����Ͻ�
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_passwd() {
		return user_passwd;
	}
	public void setUser_passwd(String user_passwd) {
		this.user_passwd = user_passwd;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getZip_code() {
		return zip_code;
	}
	public void setZip_code(Integer zip_code) {
		this.zip_code = zip_code;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneCheckYn() {
		return phoneCheckYn;
	}
	public void setPhoneCheckYn(String phoneCheckYn) {
		this.phoneCheckYn = phoneCheckYn;
	}
	public String getEmailCheckYn() {
		return emailCheckYn;
	}
	public void setEmailCheckYn(String emailCheckYn) {
		this.emailCheckYn = emailCheckYn;
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
		return "MemberVO [user_id=" + user_id + ", user_name=" + user_name + ", user_passwd=" + user_passwd
				+ ", address=" + address + ", zip_code=" + zip_code + ", birth=" + birth + ", phoneNumber="
				+ phoneNumber + ", email=" + email + ", phoneCheckYn=" + phoneCheckYn + ", emailCheckYn=" + emailCheckYn
				+ ", registered_date=" + registered_date + ", updated_date=" + updated_date + "]";
	}
	
}
