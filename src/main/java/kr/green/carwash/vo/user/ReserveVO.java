package kr.green.carwash.vo.user;

import java.sql.Time;
import java.util.Date;

public class ReserveVO {

	private String reserv_name;			// 예약자성명
	private Integer reserv_phone;		// 예약자폰번호
	private String reserv_email;		// 예약자이메일주소
	private String reserv_passwd;		// 예약비밀번호
	private String sido_name;			// 시도명
	private String city_name;			// 시군구명
	private String busin_place_name;	// 사업장명 
	private String carwash_type;		// 세차유형
	private Date reserv_date;			// 예약날짜
	private Time reserv_time;			// 예약시간
	private String car_company;			// 차량회사
	private String car_model;			// 차량모델
	private Integer car_number;			// 차량번호
	private String agree_info;			// 개인정보수집동의
	private String request_message;		// 추가요청메시지
	private Date registered_date;		// 등록일시
	private String updated_id;			// 수정자ID
	private Date updated_date;			// 수정일시
	
	
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
