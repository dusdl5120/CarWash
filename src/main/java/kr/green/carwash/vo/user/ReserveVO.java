package kr.green.carwash.vo.user;

import java.sql.Time;
import java.util.Date;

public class ReserveVO {

	private String reserv_name;			// �����ڼ���
	private Integer reserv_phone;		// ����������ȣ
	private String reserv_email;		// �������̸����ּ�
	private String reserv_passwd;		// �����й�ȣ
	private String sido_name;			// �õ���
	private String city_name;			// �ñ�����
	private String busin_place_name;	// ������ 
	private String carwash_type;		// ��������
	private Date reserv_date;			// ���೯¥
	private Time reserv_time;			// ����ð�
	private String car_company;			// ����ȸ��
	private String car_model;			// ������
	private Integer car_number;			// ������ȣ
	private String agree_info;			// ����������������
	private String request_message;		// �߰���û�޽���
	private Date registered_date;		// ����Ͻ�
	private String updated_id;			// ������ID
	private Date updated_date;			// �����Ͻ�
	
	
	public String getReserv_name() {
		return reserv_name;
	}
	public void setReserv_name(String reserv_name) {
		this.reserv_name = reserv_name;
	}
	public Integer getReserv_phone() {
		return reserv_phone;
	}
	public void setReserv_phone(Integer reserv_phone) {
		this.reserv_phone = reserv_phone;
	}
	public String getReserv_email() {
		return reserv_email;
	}
	public void setReserv_email(String reserv_email) {
		this.reserv_email = reserv_email;
	}
	public String getReserv_passwd() {
		return reserv_passwd;
	}
	public void setReserv_passwd(String reserv_passwd) {
		this.reserv_passwd = reserv_passwd;
	}
	public String getSido_name() {
		return sido_name;
	}
	public void setSido_name(String sido_name) {
		this.sido_name = sido_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getBusin_place_name() {
		return busin_place_name;
	}
	public void setBusin_place_name(String busin_place_name) {
		this.busin_place_name = busin_place_name;
	}
	public String getCarwash_type() {
		return carwash_type;
	}
	public void setCarwash_type(String carwash_type) {
		this.carwash_type = carwash_type;
	}
	public Date getReserv_date() {
		return reserv_date;
	}
	public void setReserv_date(Date reserv_date) {
		this.reserv_date = reserv_date;
	}
	public Time getReserv_time() {
		return reserv_time;
	}
	public void setReserv_time(Time reserv_time) {
		this.reserv_time = reserv_time;
	}
	public String getCar_company() {
		return car_company;
	}
	public void setCar_company(String car_company) {
		this.car_company = car_company;
	}
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	public Integer getCar_number() {
		return car_number;
	}
	public void setCar_number(Integer car_number) {
		this.car_number = car_number;
	}
	public String getAgree_info() {
		return agree_info;
	}
	public void setAgree_info(String agree_info) {
		this.agree_info = agree_info;
	}
	public String getRequest_message() {
		return request_message;
	}
	public void setRequest_message(String request_message) {
		this.request_message = request_message;
	}
	public Date getRegistered_date() {
		return registered_date;
	}
	public void setRegistered_date(Date registered_date) {
		this.registered_date = registered_date;
	}
	public String getUpdated_id() {
		return updated_id;
	}
	public void setUpdated_id(String updated_id) {
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
		return "ReserveVO [reserv_name=" + reserv_name + ", reserv_phone=" + reserv_phone + ", reserv_email="
				+ reserv_email + ", reserv_passwd=" + reserv_passwd + ", sido_name=" + sido_name + ", city_name="
				+ city_name + ", busin_place_name=" + busin_place_name + ", carwash_type=" + carwash_type
				+ ", reserv_date=" + reserv_date + ", reserv_time=" + reserv_time + ", car_company=" + car_company
				+ ", car_model=" + car_model + ", car_number=" + car_number + ", request_message=" + request_message
				+ "]";
	}
	
}
