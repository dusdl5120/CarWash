package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminMemberVO {

	private String admin_id;						// 관리자아이디
	private String admin_passwd;					// 관리자비밀번호
	private String admin_name;						// 관리자이름
	private String admin_phone;						// 관리자휴대폰번호
	private String busin_place_name;				// 사업장명
	private String busin_place_code_name;			// 사업장업종명
	private String ceo_name;						// 대표자명
	private String carwash_type;					// 세차유형
	private String water_quality_permi_num;			// 수질허가번호
	private String road_name_addr;					// 소재지도로명주소	
	private String busin_place_tele_num;			// 사업장전화번호
	private String closed_date;						// 휴무일
	private String registered_id;					// 등록자ID
	private String updated_id;						// 수정자ID
	private Date registered_date;					// 등록일시
	private Date updated_date;						// 수정일시
	
	
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
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
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
	public String getWater_quality_permi_num() {
		return water_quality_permi_num;
	}
	public void setWater_quality_permi_num(String water_quality_permi_num) {
		this.water_quality_permi_num = water_quality_permi_num;
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
		return "AdminMemberVO [admin_id=" + admin_id + ", admin_passwd=" + admin_passwd + ", admin_name=" + admin_name + ", admin_phone=" + admin_phone 
				+ ", busin_place_name=" + busin_place_name + ", busin_place_code_name=" + busin_place_code_name + ", ceo_name=" + ceo_name + ", carwash_type=" + carwash_type
				+ ", water_quality_permi_num=" + water_quality_permi_num + ", road_name_addr=" + road_name_addr + ", busin_place_tele_num=" + busin_place_tele_num 
				+ ", closed_date=" + closed_date + ", registered_id=" + registered_id + ", updated_id=" + updated_id + ", registered_date=" + registered_date
				+ ", updated_date=" + updated_date + "]";
	}
	
}

