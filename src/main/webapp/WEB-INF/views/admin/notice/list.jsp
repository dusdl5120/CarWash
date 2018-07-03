<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>CARWASH MAIN</title>

<link rel="icon" href="favicon.ico" type="image/x-icon" />
<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.css'/>" rel="stylesheet"> 

<!-- Custom fonts for this template -->
<link href="<c:url value='/resources/vendor/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css"> 
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Bootstrap core JavaScript -->
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

<!-- Plugin JavaScript -->
<script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/scrollreveal/scrollreveal.min.js'/>"></script>
<script src="<c:url value='/resources/vendor/magnific-popup/jquery.magnific-popup.min.js'/>"></script>

<!-- Custom scripts for this template -->
<script src="<c:url value='/resources/js/creative.min.js'/>"></script>

<!-- Plugin CSS -->
<link href="<c:url value='/resources/vendor/magnific-popup/magnific-popup.css'/>" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/creative.min.css'/>" rel="stylesheet"> 

</head>
<body>
	<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->
	
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

				<table class="table" style="text-align: center;">
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
								<td>${list.title }</td> 
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