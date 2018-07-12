package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminMemberVO {

	private String admin_id;						// �����ھ��̵�
	private String admin_passwd;					// �����ں�й�ȣ
	private String admin_name;						// �������̸�
	private String admin_phone;						// �������޴�����ȣ
	private String busin_place_name;				// ������
	private String busin_place_code_name;			// ����������
	private String ceo_name;						// ��ǥ�ڸ�
	private String carwash_type;					// ��������
	private String water_quality_permi_num;			// �����㰡��ȣ
	private String road_name_addr;					// ���������θ��ּ�	
	private String busin_place_tele_num;			// �������ȭ��ȣ
	private String closed_date;						// �޹���
	private String registered_id;					// �����ID
	private String updated_id;						// ������ID
	private Date registered_date;					// ����Ͻ�
	private Date updated_date;						// �����Ͻ�
	
	
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

