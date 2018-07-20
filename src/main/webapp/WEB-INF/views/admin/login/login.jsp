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

	<div class="container" style="height: 750px;">
		<div class="rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label class="fa fa-list" style="font-size: 20px;">&nbsp;&nbsp;<strong>로그인</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

			<hr class="hr-2">
			
		</div>
		 
		<form method="post" style="width: 100%; text-align: webkit-center;"> 
			<div style="width:100%; padding-top: 30px;">
			 
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="admin_id">아이디</label>
					</div>
					<div class="col-md-7"> 
						<input type="text" class="input form-control" id="admin_id" name="admin_id">
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="admin_passwd">비밀번호</label>
					</div>
					<div class="col-md-7"> 
						<input type="password" class="input form-control" id="admin_passwd" name="admin_passwd">
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				<div class="row" style="margin-top: 25px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>
					<div class="col-md-7"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/member/join'">회원가입</button>
						<button type="submit" class="btn btn-dark" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/member/login'">로그인</button>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
			</div>
		</form>
		

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



