<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->
</head>
<body>

<!-- Menu -->
	<jsp:include page="../../../common/menu.jsp"></jsp:include>
<!-- Menu -->

	<!-- Contents -->

		<div class="container">
			<div class="rows container-rows">  
				<div style="width: 100%;">
					<div class="col-md-4 "></div>
					<div class="col-md-4 text-center text-title">
						<label>&nbsp;&nbsp;<strong>예약목록</strong></label>
					</div>
					<div class="col-md-4"></div>
				</div>
				<br><br>

				
				<div class="width-div"><br>
					<table class="table text-center">
						<thead>
							<tr> 
								<th style="width: 10%;">예약번호</th>
								<th style="width: 10%;">예약자이름</th>
								<th style="width: 40%;">사업장명</th>
								<th style="width: 10%;">서비스유형</th>
								<th style="width: 10%;">예약날짜</th>
								<th style="width: 10%;">예약시간</th>
								<th style="width: 10%;">작성일시</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
								<tr>
									<td>${list.reserv_no }</td>
									<td>${list.reserv_name }</td>
									<td class="ellipsis"><a href="/carwash/user/reserve/read?reserv_no=${list.reserv_no }">${list.busin_place_name }</a></td>
									<td>${list.carwash_type }</td>
									<td>${list.reserv_date }</td>
									<td>${list.reserv_time }</td>
									<td><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				
			</div>
		</div>
				
	<!-- Contents -->

	<!-- Footer -->
		<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

<script>
$(document).ready(function() {


});
</script>
</body>
</html>