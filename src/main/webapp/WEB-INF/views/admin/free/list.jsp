<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->


<title>자유게시판 목록</title>

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

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div style="width: 100%; margin-bottom: 3%;">
					<div class="col-md-4 "></div>
					<div class="col-md-4" style="text-align: center;">
						<h4 class="modal-titles fa fa-list">&nbsp;&nbsp;<strong>자유게시판</strong></h4>
					</div>
					<div class="col-md-4"></div>
				</div>
				<br><br>

				<!-- <hr class="hr-2"> -->
				
				<div style="width: 100%;"><br>
					<!-- <div style="width: 100%; margin-bottom: 25px;">
						<form class="form-inline" style="display: inline-block; float: left;">
							<div class="form-group">
								<input class="form-control mr-sm-2" type="text" name="search" size="25">
								<button class="btn btn-dark" type="submit">검색</button>
							</div>
						</form>
						
						<div>
							<button type="button" class="btn btn-dark" style="float: right;" onclick="location.href='/carwash/admin/notice/insert'">등록</button>
							<button type="button" class="btn btn-danger" style="float: right; margin-right: 10px;" 
									onclick="location.href='/carwash/admin/notice/delete'">선택삭제</button>
						</div><br>
					</div> -->
					
					<table id="dataTable" class="table" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: 10%;"><input type="checkbox" id="allCheck" class="icheck"></th>
								<th style="width: 10%;">순번</th>
								<th style="width: 40%;">제목</th>
								<th style="width: 10%;">작성자</th>
								<th style="width: 10%;">조회수</th>
								<th style="width: 10%;">첨부파일</th>
								<th style="width: 10%;">작성일시</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}" varStatus="status">
								<tr>
									<td><input type="checkbox" id="checkbox" name="chkYn" /></td>
									<td>${list.id }</td>
									<td><a href="/carwash/admin/free/read?id=${list.id }">${list.title }</a></td>
									<td>${list.registered_id }</td>
									<td>${list.cnt }</td>
									<td>${list.file_name }</td>
									<td><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div style="width: 100%;">
					<ul class="pagination" style="float: left;">
						<c:if test="${pageMaker.prev}">
							<li class="page-item"><a class="page-link" href="/carwash/admin/free/list?page=${pageMaker.startPage - 1 }">Previous</a></li>
						</c:if>
						<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="page">
							<li class="page-item"><a class="page-link" href="/carwash/admin/free/list?page=${page }">${page }</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<li class="page-item"><a class="page-link" href="/carwash/admin/free/list?page=${pageMaker.endPage + 1 }">Next</a></li>
						</c:if>
					</ul>
					
					<div style="margin-top: 25px;"> 
						<button type="button" class="btn btn-dark" style="float: right;" onclick="location.href='/carwash/admin/free/insert'">등록</button>
						<button type="button" class="btn btn-danger" style="float: right; margin-right: 10px;" 
								onclick="location.href='/carwash/admin/free/delete'">선택삭제</button>
					</div><br>
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
			$("#allCheck").click(function() {
				if ($("#allCheck").prop("checked")) {
					$("input[name=chkYn]").prop("checked", true);
				} else {
					$("input[name=chkYn]").prop("checked", false);
				}
			});

		});
	</script>
</body>
</html>