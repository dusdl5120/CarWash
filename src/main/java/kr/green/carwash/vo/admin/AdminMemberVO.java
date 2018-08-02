package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminMemberVO {

	private String admin_id;						// 관리자아이디
	private String admin_passwd;					// 관리자비밀번호
	private String busin_place_name;				// 사업장명
	private String busin_place_code_name;			// 사업장업종명
	private String ceo_name;						// 대표자명
	private String carwash_type;					// 세차유형
	private String zip_code;						// 우편번호
	private String road_name_addr;					// 소재지도로명주소	
	private String road_detail_addr;					// 상세주소	
	private String busin_place_tele_num;			// 사업장전화번호
	private String closed_date;						// 휴무일
	private Date registered_date;					// 등록일시
	private Date updated_date;						// 수정일시
	private String admin;							// 로그인 시 사용자와 관리자의 여부
	
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_passwd() {
		return admin_passwd;
	}
	public void setAdmin_passwd(String admin_passwd) {
		this.admin_passwd = admin_passwd;
	}
	public String getBusin_place_name() {
		return busin_place_name;
	}
	public void setBusin_place_name(String busin_place_name) {
		this.busin_place_name = busin_place_name;
	}
	public String getBusin_place_code_name() {
		return busin_place_code_name;
	}
	public void setBusin_place_code_name(String busin_place_code_name) {
		this.busin_place_code_name = busin_place_code_name;
	}
	public String getRoad_detail_addr() {
		return road_detail_addr;
	}
	public void setRoad_detail_addr(String road_detail_addr) {
		this.road_detail_addr = road_detail_addr;
	}
	public String getCeo_name() {
		return ceo_name;
	}
	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}
	public String getCarwash_type() {
		return carwash_type;
	}
	public void setCarwash_type(String carwash_type) {
		this.carwash_type = carwash_type;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getRoad_name_addr() {
		return road_name_addr;
	}
	public void setRoad_name_addr(String road_name_addr) {
		this.road_name_addr = road_name_addr;
	}
	public String getBusin_place_tele_num() {
		return busin_place_tele_num;
	}
	public void setBusin_place_tele_num(String busin_place_tele_num) {
		this.busin_place_tele_num = busin_place_tele_num;
	}
	public String getClosed_date() {
		return closed_date;
	}
	public void setClosed_date(String closed_date) {
		this.closed_date = closed_date;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
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
		return "AdminMemberVO [admin_id=" + admin_id + ", admin_passwd=" + admin_passwd + ", busin_place_name="
				+ busin_place_name + ", busin_place_code_name=" + busin_place_code_name + ", ceo_name=" + ceo_name
				+ ", carwash_type=" + carwash_type + ", zip_code=" + zip_code + ", road_name_addr=" + road_name_addr
				+ ", road_detail_addr=" + road_detail_addr + ", busin_place_tele_num=" + busin_place_tele_num
				+ ", closed_date=" + closed_date + "]";
	}
	
}

