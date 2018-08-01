package kr.green.carwash.vo.admin;

import java.util.Date;

public class SuperMemberVO {

	private String super_id;		// 슈퍼관리자ID
	private String passwd;			// 슈퍼관리자비밀번호
	private String super_name;		// 슈퍼관리자 이름	
	private String super_phone;		// 슈퍼관리자 휴대폰번호
	private String super_email;		// 슈퍼관리자 이메일
	private String super_addr;		// 슈퍼관리자 도로명주소
	private Integer super_zip;		// 우편번호
	private Date registered_date;	// 등록일시
	private Date updated_date;		// 수정일시
	
	public String getSuper_id() {
		return super_id;
	}
	public void setSuper_id(String super_id) {
		this.super_id = super_id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getSuper_name() {
		return super_name;
	}
	public void setSuper_name(String super_name) {
		this.super_name = super_name;
	}
	public String getSuper_phone() {
		return super_phone;
	}
	public void setSuper_phone(String super_phone) {
		this.super_phone = super_phone;
	}
	public String getSuper_email() {
		return super_email;
	}
	public void setSuper_email(String super_email) {
		this.super_email = super_email;
	}
	public String getSuper_addr() {
		return super_addr;
	}
	public void setSuper_addr(String super_addr) {
		this.super_addr = super_addr;
	}
	public Integer getSuper_zip() {
		return super_zip;
	}
	public void setSuper_zip(Integer super_zip) {
		this.super_zip = super_zip;
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
		return "SuperMemberVO [super_id=" + super_id + ", passwd=" + passwd + ", super_name=" + super_name
				+ ", super_phone=" + super_phone + ", super_email=" + super_email + ", super_addr=" + super_addr
				+ ", super_zip=" + super_zip + "]";
	}
	
}
