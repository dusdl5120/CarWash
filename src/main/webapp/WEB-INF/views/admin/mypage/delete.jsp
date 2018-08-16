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
		<div class="rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>회원탈퇴</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>
		</div>
		 
		<form method="post" class="form" id="form"> 
			<div class="form-div">
			 
				<div class="row delete-margin"> 
					<div class="col-md-12 text-center col-top"> 
						 <p>지금 탈퇴하시면 예약내역 및 개인정보가 모두 삭제됩니다.</p>
						 <p>카워시를 탈퇴하시겠습니까? 정말 탈퇴를 원하시면 비밀번호를 입력해주세요.</p>
					</div>
				</div>
				
				<div class="row form-row"> 
					<div class="col-md-5 text-right col-top"> 
						<label class="control-label" for="admin_passwd">비밀번호</label>
					</div>
					<div class="col-md-2 text-left"> 
						<input type="password" class="input form-control mydelete-form" id="admin_passwd" name="admin_passwd">
					</div>
					<div class="col-md-3 text-left">
						<button type="submit" class="btn btn-danger" id="save" onclick="location.href='/carwash/admin/member/myDelete'">탈퇴</button>
					</div>
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
		$('#save').click(function() {
	    	var str = document.getElementById('form');
	    	str.submit();
	    	alert("회원탈퇴가 성공적으로 완료되었습니다.");
	    });
	});
</script>

</html>



