<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
</style>

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
				<label>&nbsp;&nbsp;<strong>로그인</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		
		<form method="post" id="loginForm" name="loginForm" class="form"> 
			<div class="row reserv-form-div"> 
				<div class="offset-md-3 col-md-6"> 
					
					<div class="row detail-margin margin-30">  
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="admin_id">아이디</label>
						</div>
						<div class="col-md-9 text-left"> 
							<input type="text" class="input form-control" id="admin_id" name="loginId">
						</div> 
					</div><br>
					
					
					<div class="row detail-margin"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="admin_passwd">비밀번호</label>
						</div>
						<div class="col-md-9 text-left"> 
							<input type="password" class="input form-control" id="admin_passwd" name="loginPw">
						</div>
					</div><br>
					
					
					<div class="row detail-margin"> 
						<div class="col-md-2 col-top"></div>
						<div class="col-md-10 text-left checks"> 
							<label for="user"><input type="radio" class="icheck" id="user" name="mode" checked value="1"/>&nbsp;사용자</label>
		                    <label for="admin"><input type="radio" class="icheck" id="admin" name="mode" value="0" style="margin-left: 20px;"/>&nbsp;관리자</label>
						</div>
					</div>
 
					
					<div class="row detail-margin"> 
						<div class="col-md-2 col-top"></div>
						<div class="col-md-10 text-left checks"> 
							<label class="check"><input type="checkbox" class="icheck" checked name="idSave" value="saveOk"/>&nbsp;아이디저장</label>
						</div>
					</div>
					
					
					<div class="row detail-margin"> 
						<div class="col-md-2 col-top"></div>
						<div class="col-md-10 text-left col-top"> 
							 <a href="/carwash/admin/member/forgot" id="forgotPw">아이디 또는 비밀번호를 잊으셨나요?</a><br>
							 <a href="/carwash/admin/member/adminYn">아직 회원이 아니신가요?</a>
						</div>
					</div><br>
					
				</div>
			</div>
			<br> <br> 
			
			<div class="row footer-mb"> 
				<div class="col-md-12 text-right"> 
					<button type="submit" class="btn btn-insert-join" onclick="location.href='/carwash/admin/member/adminYn'">회원가입</button>
					<button type="button" class="btn btn-dark btn-cancel-join" onclick="sendit()" class="btn btn-secondary btn-update">로그인</button>
				</div>
			</div>
		</form>
		 

	</div>

	<!-- Contents -->

	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>
	/* 아이디저장 -> 아이디는 서버가 저장하는 것이 아님, 로그인시 아이디저장을 체크했다면 그 아이디는 쿠키파일로 클라이언트 컴퓨터에 저장됨 */
	window.onload = function() {
	
	    if (getCookie("id")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
	        document.loginForm.admin_id.value = getCookie("id"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
	        document.loginForm.idSave.checked = true; // 체크는 체크됨으로
	    }
	
	}
	
	function setCookie(name, value, expiredays) //쿠키 저장함수
	{
	    var todayDate = new Date();
	    todayDate.setDate(todayDate.getDate() + expiredays);
	    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	}
	
	function getCookie(Name) { // 쿠키 불러오는 함수
	    var search = Name + "=";
	    if (document.cookie.length > 0) { // if there are any cookies
	        offset = document.cookie.indexOf(search);
	        if (offset != -1) { // if cookie exists
	            offset += search.length; // set index of beginning of value
	            end = document.cookie.indexOf(";", offset); // set index of end of cookie value
	            if (end == -1)
	                end = document.cookie.length;
	            return unescape(document.cookie.substring(offset, end));
	        }
	    }
	}
	
	function sendit() {
	    var frm = document.loginForm;
	    if (!frm.admin_id.value) { //아이디를 입력하지 않으면.
	        alert("아이디를 입력 해주세요!");
	        frm.admin_id.focus();
	        return;
	    }
	    if (!frm.admin_passwd.value) { //패스워드를 입력하지 않으면.
	        alert("패스워드를 입력 해주세요!");
	        frm.admin_passwd.focus();
	        return;
	    }
	
	    if (document.loginForm.idSave.checked == true) { // 아이디 저장을 체크 하였을때
	        setCookie("id", document.loginForm.admin_id.value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
	    } else { // 아이디 저장을 체크 하지 않았을때
	        setCookie("id", document.loginForm.admin_id.value, 0); //날짜를 0으로 저장하여 쿠키삭제
	    }
	
	    document.loginForm.submit(); //유효성 검사가 통과되면 서버로 전송.
	
	}
</script>

</html>



