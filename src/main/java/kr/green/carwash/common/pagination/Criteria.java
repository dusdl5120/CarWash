package kr.green.carwash.common.pagination;

public class Criteria {

	// 현재 페이지
	private int page;
	
	// 한 페이지 당 컨텐츠 갯수
	private int perPageNum;

	// Criteria 디폴트 생성자 : 현재 페이지를 1페이지로, 한 페이지에 10개의 컨텐츠
	public Criteria() {
		
		this.page = 1;
		this.perPageNum = 10;
	}

	public Criteria(int page, int perPageNum) {
		
		this.page = page;
		this.perPageNum = perPageNum;
	}


	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	@Override
	public String toString() {
		
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}

	/* 쿼리문에서 limit에 사용되는 인덱스를 계산하는 getter */
	public int getPageStart() {
		
		return (this.page - 1) * perPageNum;
	}

}
