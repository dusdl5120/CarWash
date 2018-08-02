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
		<div class="rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label style="font-size: 20px;">&nbsp;&nbsp;<strong>회원탈퇴</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

			<hr class="hr-2">
			
		</div>
		 
		<form method="post" style="width: 100%; text-align: webkit-center;" id="form"> 
			<div style="width:100%; padding-top: 30px;">
			 
				<div class="row" style="margin-bottom: 50px;"> 
					<div class="col-md-3"></div>
					<div class="col-md-7" style="text-align: left; padding-top: 6px;"> 
						 <p>지금 탈퇴하시면 예약내역 및 개인정보가 모두 삭제됩니다.</p>
						 <p>카워시를 탈퇴하시겠습니까? 정말 탈퇴를 원하시면 비밀번호를 입력해주세요.</p>
					</div>
					<div class="col-md-2"></div>
				</div>
				
				
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
						<button type="submit" class="btn btn-danger" style="float: right; margin-top: 50px;" id="save" onclick="location.href='/carwash/admin/member/myDelete'">탈퇴하기</button>
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-right: 10px;" onclick="location.href='/carwash'">취소</button>
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
		$('#save').click(function() {
	    	var str = document.getElementById('form');
	    	str.submit();
	    	alert("회원탈퇴가 성공적으로 완료되었습니다.");
	    });
	});
</script>

</html>



