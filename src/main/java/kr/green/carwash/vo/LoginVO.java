package kr.green.carwash.vo;

public class LoginVO {

	private String id;			// �α��ξ��̵�
	private String passwd;		// �α��κ�й�ȣ
	private String admin;		// �α��� �� ����ڿ� �������� ����
	
	
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
