package kr.green.carwash.vo.user;

import java.util.Date;

public class MemberVO {
	
	private String id;						// 사용자ID
	private String name;					// 사용자이름
	private String password;				// 비밀번호
	private String address;					// 도로명주소
	private Date birth;						// 생년월일
	private String phoneNumber;				// 휴대폰번호
	private String email;					// 이메일주소
	private String phoneCheckYn;			// SMS수신여부
	private String emailCheckYn;			// 이메일수신여부
	private String registered_id;			// 등록자ID
	private String updated_id;				// 수정자ID
	private Date registered_date;			// 등록일시
	private Date updated_date;				// 수정일시
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
