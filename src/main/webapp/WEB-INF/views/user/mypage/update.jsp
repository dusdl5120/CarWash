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
				<label>&nbsp;&nbsp;<strong>마이페이지</strong>&nbsp;</label>
			</div>
			<div class="col-md-4"></div>
			
				<br><br>
				
			<form id="form" class="form" method="post" action="/carwash/user/member/myUpdate">
				<div class="row reserv-form-div"> 
					<div class="col-md-12"> 
				
						<div class="text-left reserv-label">
							<label>&nbsp; 회원정보수정 <img src="<c:url value='/resources/images/update.png'/>"></label>
						</div>
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="user_id">사용자ID</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control input-read" id="user_id" name="user_id" value="${my.user_id }" disabled>
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
										<input type="password" class="input form-control" id="user_passwd" name="user_passwd">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="user_passwd">비밀번호확인</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="user_passwd_confirm" name="user_passwd_confirm">
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
										<input type="text" class="input form-control" id="phone_num" name="phone_num" value="${my.phone_num }">
									</div>
									<div class="col-md-3 text-left"> 
										<label class="check"><input type="checkbox" class="icheck" id="phone_yn" name="phone_yn" 
										<c:out value="${my.phone_yn ? 'checked' : ''}"></c:out>/>&nbsp;SMS 수신여부																	
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
										<input type="text" class="input form-control" id="birth" name="birth" value="<fmt:formatDate value="${my.birth }"  pattern="yyyy-MM-dd" />">
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
										<input type="text" class="input form-control" id="email" name="email" value="${my.email }">
									</div>
									<div class="col-md-3 text-left"> 
										<label class="check"><input type="checkbox" class="icheck" id="email_yn" name="email_yn"
										<c:out value="${my.email_yn ? 'checked' : ''}"></c:out>/>&nbsp;EMAIL 수신여부</label>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="road_name_addr">도로명주소</label>
									</div>
									<div class="col-md-6 text-left"> 
										<input type="text" class="input form-control" id="zip_code" name="zip_code" onclick="postCode()" value="${my.zip_code }" readonly>
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-dark" onclick="postCode()" style="width:100%;">우편번호</button>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="address"></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="address" name="address" value="${my.address }">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="detail_address"></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="detail_address" name="detail_address" value="${my.detail_address }">
									</div>
								</div>
							</div>
						</div><br>  
						
					</div>
				</div>
				<br> <br>
				
				<div class="row footer-mb"> 
					<div class="col-md-12 text-right"> 
						<button type="button" class="btn btn-insert-join" id="update">수정하기</button>
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
		
		/* 전화번호 마스크 기능 */	
		$('#phone_num').mask('(000)-0000-0000', {
			placeholder : "(___)-____-____"
		});
		
		/* 생년월일 마스크 기능 */
		$('#birth').mask('0000/00/00', {
			placeholder : "____/__/__"
		});
		
		$('#update').click(function() {
			
			var userId = '${my.user_id}';
			var str = $('#form');
	
			if (confirm("입력하신 정보로 수정하시겠습니까?") == true) { 	
				
				//location.href='/carwash/user/member/myUpdate?user_id=' + userId;
				alert("회원정보가 성공적으로 수정되었습니다.");
				str.submit();
				
			} else { 			
				return false;
			}	
		});
	
	});	
	
	/* 우편번호 */
	function postCode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	            if(fullRoadAddr !== ''){
	                fullRoadAddr += extraRoadAddr;
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('zip_code').value = data.zonecode; //5자리 새우편번호 사용
	            document.getElementById('address').value = fullRoadAddr;
	
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	        }
	    }).open();
	};
</script>

</html>



