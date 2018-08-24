<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
	<base href="http://localhost:8080/">
	<!-- Header -->
</head> 

<body>
	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->
	<div class="container">
		<div class="rows container-rows">

			<div class="col-md-4"></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>마이페이지</strong></label>
			</div>
			<div class="col-md-4"></div>


			<form class="form">
				<div class="row reserv-form-div"> 
					<div class="col-md-12"> 
				
						<div class="text-left reserv-label">
							<label>&nbsp; 회원정보상세 <img src="<c:url value='/resources/images/detail.png'/>"></label>
						</div>
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="user_id">사용자ID</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control input-read" id="user_id" name="user_id" value="${my.user_id }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="user_name">사용자이름</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control input-read" id="user_name" name="user_name" value="${my.user_name }" disabled>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="user_passwd">비밀번호</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="user_passwd" name="user_passwd" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="user_passwd_confirm">비밀번호확인</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="user_passwd_confirm" name="user_passwd_confirm" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="phone_num">휴대폰번호</label>
									</div>
									<div class="col-md-5 text-left"> 
										<input type="text" class="input form-control" id="phone_num" name="phone_num" value="${my.phone_num }" readonly>
									</div>
									<div class="col-md-3 text-left"> 
										<label class="control-label" for="phone_yn">SMS 수신여부 &nbsp; 
											<c:if test="${my.phone_yn }"> 동의</c:if>
											<c:if test="${!my.phone_yn }"> 미동의</c:if>
										</label>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="birth">생년월일</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="birth" name="birth" value="<fmt:formatDate value="${my.birth }"  pattern="yyyy-MM-dd" />" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="email">이메일주소</label>
									</div>
									<div class="col-md-5 text-left"> 
										<input type="text" class="input form-control" id="email" name="email" value="${my.email }" readonly>
									</div>
									<div class="col-md-3 text-left"> 
										<label class="control-label" for="email_yn">EMAIL 수신여부 &nbsp;
											<c:if test="${my.email_yn }">동의</c:if>
											<c:if test="${!my.email_yn }">미동의</c:if>
										</label>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="zip_code">우편번호</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="zip_code" name="zip_code" value="${my.zip_code }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="address">소재주주소</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="address" name="address" value="${my.address }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="detail_address">상세주소</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="detail_address" name="detail_address" value="${my.detail_address }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
					</div>
				</div>
				<br> <br>
				
				<div class="row footer-mb"> 
					<div class="col-md-12 text-right"> 
						<button type="button" class="btn btn-danger btn-cancel-reserve"  onclick="location.href='/carwash/user/member/myDelete'">탈퇴하기</button>
						<button type="button" class="btn btn-insert-join" onclick="location.href='/carwash/user/member/myUpdate'">수정하기</button>
						<button type="button" class="btn btn-dark btn-cancel-join" onclick="location.href='/carwash'">홈으로</button>
					</div>
				</div>
			</form>

		</div>
	</div>





	<!-- Contents -->
	
<!-- Footer -->
<jsp:include page="../../../common/footer.jsp"></jsp:include>
<!-- Footer -->

</body>

<script>
$(document).ready(function(){
	

});
</script>

</html>



