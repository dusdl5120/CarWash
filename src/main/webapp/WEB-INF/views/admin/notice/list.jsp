<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->


<title>공지사항 목록</title>

<style>

/* 체크박스 없이 테이블 행 선택 */
.selected {
	background-color: gray !important;
} 

</style>

<script>
$(document).ready(function() {

	$('#example tbody').on('click', 'tr', function() {
		$(this).toggleClass('selected');
	});
	   
});
</script>
</head>
<body>
	
	
	<!-- Contents -->

	<div class="container-fluid">
		<div class="container">
			<div class="row"> 
				
				<div class="col-md-4 "></div>
				<div class="col-md-4" style="text-align: center;">
					<h4 class="modal-titles fa fa-list">&nbsp;&nbsp;<strong>공지사항</strong></h4>
				</div>
				<div class="col-md-4"></div>
				
					<br><br>
				
				<hr class="hr-2">

				<table id="example" class="table" style="text-align: center;">
					<thead>
						<tr>
							<th style="width: 10%;">순번</th>
							<th style="width: 50%;">제목</th>
							<th style="width: 10%;">작성자</th>
							<th style="width: 30%;">작성일시</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${list}" varStatus="status">
							<tr>
								<td>${list.id }</td>
								<td><a href="/carwash/admin/notice/read?id=${list.id }">${list.title }</a></td>  
								<td>${list.registered_id }</td>
								<td><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
			<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/notice/insert'">등록</button>	
			
			<ul class="pagination"  style="justify-content: center;">
				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link" href="/carwash/admin/notice/list?page=${pageMaker.startPage - 1 }">Previous</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="page">
			        <li class="page-item">  <a class="page-link" href="/carwash/admin/notice/list?page=${page }">${page }</a></li> 
			    </c:forEach>
			     <c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link" href="/carwash/admin/notice/list?page=${pageMaker.endPage + 1 }">Next</a></li>
				</c:if>
				
				
			</ul>
	
			
		
		</div>
	</div>




	<!-- Contents -->
	
	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->
	

</body>



</html>