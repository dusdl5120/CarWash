package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminMemberVO {

	private String admin_id;						// �����ھ��̵�
	private String admin_passwd;					// �����ں�й�ȣ
	private String busin_place_name;				// ������
	private String busin_place_code_name;			// ����������
	private String ceo_name;						// ��ǥ�ڸ�
	private String carwash_type;					// ��������
	private String zip_code;						// �����ȣ
	private String road_name_addr;					// ���������θ��ּ�	
	private String road_detail_addr;					// ���ּ�	
	private String busin_place_tele_num;			// �������ȭ��ȣ
	private String closed_date;						// �޹���
	private Date registered_date;					// ����Ͻ�
	private Date updated_date;						// �����Ͻ�
	private String admin;							// �α��� �� ����ڿ� �������� ����
	
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

