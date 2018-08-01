package kr.green.carwash.vo.user;

import java.util.Date;

public class MemberVO {
	
	private String user_id;					// 사용자ID
	private String user_name;				// 사용자이름
	private String user_passwd;				// 비밀번호
	private String address;					// 도로명주소
	private Integer zip_code;				// 우편번호
	private Date birth;						// 생년월일
	private String phoneNumber;				// 휴대폰번호
	private String email;					// 이메일주소
	private String phoneCheckYn;			// SMS수신여부
	private String emailCheckYn;			// 이메일수신여부
	private Date registered_date;			// 등록일시
	private Date updated_date;				// 수정일시
	
	
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
