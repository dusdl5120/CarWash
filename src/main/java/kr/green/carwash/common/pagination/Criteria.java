package kr.green.carwash.common.pagination;

public class Criteria {

	// ���� ������
	private int page;
	
	// �� ������ �� ������ ����
	private int perPageNum;

	// Criteria ����Ʈ ������ : ���� �������� 1��������, �� �������� 10���� ������
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

	/* ���������� limit�� ���Ǵ� �ε����� ����ϴ� getter */
	public int getPageStart() {
		
		return (this.page - 1) * perPageNum;
	}

}
