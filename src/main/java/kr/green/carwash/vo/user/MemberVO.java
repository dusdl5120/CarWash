package kr.green.carwash.vo.user;

import java.util.Date;

public class MemberVO {
	
	private String user_id;					// 사용자ID
	private String user_name;				// 사용자이름
	private String user_passwd;				// 비밀번호
	private String address;					// 도로명주소
	private String detail_address;			// 상세주소
	private Integer zip_code;				// 우편번호
	private Date birth;						// 생년월일
	private String phone_num;				// 휴대폰번호
	private String email;					// 이메일주소
	private Boolean phone_yn;				// SMS수신여부
	private Boolean email_yn;				// 이메일수신여부
	private Date registered_date;			// 등록일시
	private Date updated_id;				// 수정자ID
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
	public String getDetail_address() {
		return detail_address;
	}
	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
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
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Boolean getPhone_yn() {
		return phone_yn;
	}
	public void setPhone_yn(Boolean phone_yn) {
		this.phone_yn = phone_yn;
	}
	public Boolean getEmail_yn() {
		return email_yn;
	}
	public void setEmail_yn(Boolean email_yn) {
		this.email_yn = email_yn;
	}
	public Date getRegistered_date() {
		return registered_date;
	}
	public void setRegistered_date(Date registered_date) {
		this.registered_date = registered_date;
	}
	public Date getUpdated_id() {
		return updated_id;
	}
	public void setUpdated_id(Date updated_id) {
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
		return "MemberVO [user_id=" + user_id + ", user_name=" + user_name + ", user_passwd=" + user_passwd
				+ ", address=" + address + ", detail_address=" + detail_address + ", zip_code=" + zip_code + ", birth="
				+ birth + ", phone_num=" + phone_num + ", email=" + email + ", phone_yn=" + phone_yn + ", email_yn="
				+ email_yn + ", registered_date=" + registered_date + "]";
	}
	
}
