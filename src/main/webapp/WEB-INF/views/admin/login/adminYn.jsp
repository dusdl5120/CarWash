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

	<div class="container" style="height: 820px;">
		<div class="rows" style="margin-top: 16%;">

			<div class="col-md-4 "></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label style="font-size: 20px;">&nbsp;&nbsp;<strong>가입자 유형 선택</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

			<hr class="hr-2">
			
		</div>
		
		
		<div class="row">
			<div class="col-md-12">	
				<div class="row" style="margin-top: 100px;">	
					<div class="col-md-2">
					
					</div>
					<div class="col-md-8" style="padding: 50px;">
						<div class="row text-center">
						
							<div class="col-md-1"></div>
							
							<div class="col-md-4"><button type="button" class="btn btn-dark" onclick="location.href='/carwash/user/member/join'" 
							style="width:170px; height: 150px;">사용자</button></div>
							
							<div class="col-md-2"></div>
							
							<div class="col-md-4"><button type="button" class="btn btn-dark" onclick="location.href='/carwash/admin/member/join'" 
							style="width:170px; height: 150px;">관리자</button></div>
							
							<div class="col-md-1"></div>
							 
						</div>
					</div>
					<div class="col-md-2">
					
					</div>
				</div>
			</div>	
		</div>
		
		
		
	 
		<!-- <div style="width:100%; padding-top: 30px;">
		 
			<div class="col-md-1"></div>
			<div class="col-md-4" style="border: 1px solid gray;"> 
				<button type="button" class="btn btn-dark" onclick="location.href='/carwash/user/member/join'" style="width:15%;">사용자</button>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4" style="border: 1px solid gray;"> 
				<button type="button" class="btn btn-dark" onclick="location.href='/carwash/admin/member/join'" style="width:15%;">관리자</button>
			</div>
			<div class="col-md-1"></div>

		</div> -->
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



