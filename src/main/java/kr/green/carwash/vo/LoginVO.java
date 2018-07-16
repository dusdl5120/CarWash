package kr.green.carwash.vo;

public class LoginVO {

	private String id;			// 로그인아이디
	private String passwd;		// 로그인비밀번호
	private String admin;		// 로그인 시 사용자와 관리자의 여부
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
	
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", passwd=" + passwd + ", admin=" + admin + "]";
	}
	
}
