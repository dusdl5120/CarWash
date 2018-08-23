<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

			<div class="col-md-4 "></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>가입자 유형 선택</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>
		</div>
		
		
		<div class="row">
			<div class="col-md-12">	
				<div class="row mg-top">	
					<div class="col-md-2"></div>
					
					<div class="col-md-8 pd-top">
						<div class="row text-center">
							<div class="col-md-1"></div>
							<div class="col-md-4"><button type="button" class="btn btn-secondary admin-yn" onclick="location.href='/carwash/user/member/join'">사용자</button></div>
							<div class="col-md-2"></div> 
							<div class="col-md-4"><button type="button" class="btn btn-secondary admin-yn" onclick="location.href='/carwash/admin/member/join'">관리자</button></div>
							<div class="col-md-1"></div>
							 
						</div>
					</div>
					
					<div class="col-md-2"></div>
				</div>
			</div>	
		</div>
		
	</div>

	<!-- Contents -->

	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>
	$(function() {

	});
</script>

</html>



