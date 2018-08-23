<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
<script src="//code.jquery.com/jquery-3.3.1.js"></script>
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
				<label>&nbsp;&nbsp;<strong>예약상세</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		<!-- 상세정보 -->
		<form id="form" class="form"> 
			<div class="row reserv-form-div"> 
				<div class="col-md-12"> 
					<input type="hidden" name="reserv_no" value="${reserve.reserv_no }"/>
			
					<div class="text-left reserv-label">
						<label>&nbsp; 고객정보 <img src="<c:url value='/resources/images/info.png'/>"></label>
					</div>
					
					<div class="row reserv-form-row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="reserv_name">예약자이름</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_name" name="reserv_name" value="${reserve.reserv_name }" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserv_phone">예약자 휴대폰번호</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_phone" name="reserv_phone" value="${reserve.reserv_phone }" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
					
					<div class="row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="reserv_email">이메일</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_email" name="reserv_email" value="${reserve.reserv_email }" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserv_passwd">비밀번호</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="password" class="input form-control" id="reserv_passwd" name="reserv_passwd" value="${reserve.reserv_passwd }" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
				</div>
			</div>
			<br> <br>
			
			
			<div class="row reserv-form-div"> 
				<div class="col-md-12"> 
			
					<div class="text-left reserv-label">
						<label>&nbsp; 예약정보 <img src="<c:url value='/resources/images/reserved.png'/>"></label>
					</div>
					
					<div class="row reserv-form-row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="sido_name">지역선택</label>
						</div>
						<div class="col-md-2 text-left"> 
							<input type="text" class="input form-control" id="sido_name" name="sido_name" value="${reserve.sido_name }" readonly> 
						</div> 
						<div class="col-md-2 text-left"> 
							<input type="text" class="input form-control" id="city_name" name="city_name" value="${reserve.city_name }" readonly>
						</div>
					</div><br>    
					 
					 
					<div class="row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="busin_place_name">사업장명</label>
						</div>
						<div class="col-md-5 text-left"> 
							<input type="text" class="input form-control" id="busin_place_name" name="busin_place_name" value="${reserve.busin_place_name }" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
					 
					 
					<div class="row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserv_date">예약날짜</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_date" name="reserv_date" value="${reserve.reserv_date }" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserv_time">예약시간</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_time" name="reserv_time" value="${reserve.reserv_time }" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
					

					<div class="row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="carwash_type">서비스유형</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="carwash_type" name="carwash_type" value="${reserve.carwash_type }" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="car_model">차량모델명</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="car_model" name="car_model" value="${reserve.car_model}" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
					
										
					<div class="row">  
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="category">차량분류</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="category" name="category" value="${reserve.category}" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="car_number">차량번호</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="car_number" name="car_number" value="${reserve.car_number}" readonly>
						</div>
						<div class="col-md-2"></div>	
					</div><br>
					

					<div class="row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="request_message">추가 요청사항</label>
						</div>
						<div class="col-md-8 text-left"> 
							<input type="text" class="input form-control" id="request_message" name="request_message" value="${reserve.request_message }" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
					 
				</div> 
			</div>
			<br> <br>
			
			<div class="row footer-mb"> 
				<div class="col-md-12 text-right"> 
					<button type="button" class="btn btn-danger btn-cancel-reserve" id="delete">예약취소</button>
					<button type="button" class="btn btn-insert-join" onclick="location.href='/carwash/user/reserve/update?reserv_no=${reserve.reserv_no}'">수정하기</button>
					<button type="button" class="btn btn-dark btn-cancel-join" onclick="location.href='/carwash/user/reserve/list'">목록</button>
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

	$(document).ready(function() {
		
		/* 예약취소 버튼을 클릭 시 삭제여부 확인창 띄우기 */
		$('#delete').click(function() {
			
			var reserveNo = '${reserve.reserv_no}';
			var str = ('#form');

			if (confirm("정말 삭제하시겠습니까?") == true) { 	
				
				location.href = '/carwash/user/reserve/delete?reserv_no=' + reserveNo;
				str.submit();
				
			} else { 											
				return false;
			}	
		});
		
		
		
	});
	
	
	
</script>
 
</html> 