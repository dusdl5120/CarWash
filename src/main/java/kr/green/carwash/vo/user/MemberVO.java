package kr.green.carwash.vo.user;

import java.util.Date;

public class MemberVO {
	
	private String id;						// �����ID
	private String name;					// ������̸�
	private String password;				// ��й�ȣ
	private String address;					// ���θ��ּ�
	private Date birth;						// �������
	private String phoneNumber;				// �޴�����ȣ
	private String email;					// �̸����ּ�
	private String phoneCheckYn;			// SMS���ſ���
	private String emailCheckYn;			// �̸��ϼ��ſ���
	private String registered_id;			// �����ID
	private String updated_id;				// ������ID
	private Date registered_date;			// ����Ͻ�
	private Date updated_date;				// �����Ͻ�
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", address=" + address 
				+ ", birth=" + birth + ", phoneNumber=" + phoneNumber + ", email=" + email + ", phoneCheckYn=" + phoneCheckYn
				+ ", emailCheckYn=" + emailCheckYn + ", registered_id=" + registered_id + ", updated_id=" + updated_id
				+ ", registered_date=" + registered_date + ", updated_date=" + updated_date + "]";
	}
	
	
}
