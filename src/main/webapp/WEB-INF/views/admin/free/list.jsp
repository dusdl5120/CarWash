<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->

<style>

/* 체크박스 없이 테이블 행 선택 */
/* .selected {
	background-color: gray !important;
} */
</style>
</head>
<body>

<!-- Menu -->
	<jsp:include page="../../../common/menu.jsp"></jsp:include>
<!-- Menu -->

	<!-- Contents -->

		<div class="container" style="height: 820px;">
			<div class="rows">
				<div style="width: 100%;">
					<div class="col-md-4 "></div>
					<div class="col-md-4" style="text-align: center; color: #6c757d;">
						<h4 style="font-size: 20px;">&nbsp;&nbsp;<strong>자유게시판</strong></h4>
					</div>
					<div class="col-md-4"></div>
				</div>
				<br><br>

				<!-- <hr class="hr-2"> -->
				
				<div style="width: 100%; margin-top: 6%; margin-bottom: -16px;"> 
					<div class="row" >
						<div class="col-md-3"></div>
						
						<div class="col-md-9">
							<form role="form" method="post" style="float: right; font-size: 17px;"> 
								<select class="custom-select" name="type" style="margin-right: 5px; width:100px;">
									<option value="0" <c:out value="${type == 0 ? 'selected' : ''}"/>>선택</option>
									<option value="1" <c:out value="${type == 1 ? 'selected' : ''}"/>>제목</option>
									<option value="2" <c:out value="${type == 2 ? 'selected' : ''}"/>>작성자</option>
									<option value="3" <c:out value="${type == 3 ? 'selected' : ''}"/>>내용</option>
								</select>
								<span style="display: inline-block;"><input type="text" class="input form-control" name="search" size="15" value="${search }"/></span>
								<button type="button" class="btn btn-dark" style="float: right; margin-left: 20px;" onclick="location.href='/carwash/admin/free/insert'">등록</button>
								<button type="submit" class="btn btn-secondary" style="float: right; margin-left: 5px;">검색</button> 
								
	                        </form>
							
						</div>
					</div>
				</div>
				
				
				<div style="width: 100%;"><br>
					<table id="dataTable" class="table" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: 10%;">순번</th>
								<th style="width: 40%;">제목</th>
								<th style="width: 20%;">작성자</th>
								<th style="width: 10%;">조회수</th>
								<!-- <th style="width: 10%;">첨부파일</th> -->
								<th style="width: 10%;">작성일시</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}" varStatus="status">
								<tr>
									<td>${list.id }</td>
									<td><a href="/carwash/admin/free/read?id=${list.id }">${list.title }</a></td>
									<td>${list.registered_id }</td>
									<td>${list.cnt }</td>
									<!-- <td>첨부파일</td> -->
									<td><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				
				<div style="width: 100%; margin-top: 2%;"> 
					<div class="row" >
						<div class="col-md-3"></div>
						
						<div class="col-md-6">
							<div style="width: 100%;">
								<ul class="pagination pagination-sm" style="justify-content: center;">
									<c:if test="${pageMaker.prev}">
										<li class="page-item"><a class="page-link" href="/carwash/admin/free/list?page=${pageMaker.startPage - 1 }&search=${search}&type=${type}">&laquo;</a></li>
									</c:if>
									<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="page">
										<li class="page-item"><a class="page-link" href="/carwash/admin/free/list?page=${page }&search=${search}&type=${type}">${page }</a></li>
									</c:forEach>
									<c:if test="${pageMaker.next}">
										<li class="page-item"><a class="page-link" href="/carwash/admin/free/list?page=${pageMaker.endPage + 1 }&search=${search}&type=${type}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
							
						<div class="col-md-3"></div>
					</div>
				</div>
				
			</div>
		</div>
				
	<!-- Contents -->

	<!-- Footer -->
		<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

	<script type="text/javascript" class="init">
		$(document).ready(function() {

			/* $('#dataTable').DataTable({
				 "language": {
				 "lengthMenu": "한 페이지당 게시글 수 : _MENU_",
				 "zeroRecords": "검색결과가 없습니다.",
				 "info": "현재페이지 _PAGE_ / 전체페이지 _PAGES_",
				 "Search" : "검색" 
				 }
			 });  */

			/* DataTable 행 선택 */
			/* $('#dataTable tbody').on('click', 'tr', function() {
				$(this).toggleClass('selected');
			}); */

			/* checkbox 전체선택/해제 */
			/* $("#allCheck").click(function() {
				if ($("#allCheck").prop("checked")) {
					$("input[name=chkYn]").prop("checked", true);
				} else {
					$("input[name=chkYn]").prop("checked", false);
				}
			}); */
			
			/* 선택삭제 버튼 클릭 시 체크한 행만 삭제 */
			/* $("#btnDel").click(function() {
				$('input[name="chkYn"]').mask('(000) 000 0000');
			}); */
				
				/* 
				if (checked == true) {
					$(this).next().remove(); //span내용지우기
					$(this).remove(); //checkbox 지우기
				} */

		});
	</script>
</body>
</html>