package kr.green.carwash.vo.admin;

import java.util.Date;

public class AdminFreeBoardVO {

	private Integer id;					// 일련번호
	private String title;				// 게시글 제목
	private String contents;			// 게시글 내용
    //private String file_name;			// 파일명
    private String save_route;			// 저장경로
    private String short_comment;		// 한줄평
	private int cnt;					// 조회수
    private String registered_id;		// 작성자ID
	private String updated_id;			// 수정자ID
	private Date registered_date;		// 작성일시
	private Date updated_date;			// 수정일시
	private String chkYn;				// 체크여부
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	/*public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}*/
	public String getSave_route() {
		return save_route;
	}
	public void setSave_route(String save_route) {
		this.save_route = save_route;
	}
	public String getShort_comment() {
		return short_comment;
	}
	public void setShort_comment(String short_comment) {
		this.short_comment = short_comment;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
	public String getChkYn() {
		return chkYn;
	}
	public void setChkYn(String chkYn) {
		this.chkYn = chkYn;
	}
	
	@Override
	public String toString() {
		return "AdminFreeBoardVO [id=" + id + ", title=" + title + ", contents=" + contents 
				+ ", save_route=" + save_route + ", short_comment=" + short_comment + ", cnt=" + cnt
				+ ", registered_id=" + registered_id + ", updated_id=" + updated_id + ", registered_date="
				+ registered_date + ", updated_date=" + updated_date + ", chkYn=" + chkYn + "]";
	}
	
	
}
