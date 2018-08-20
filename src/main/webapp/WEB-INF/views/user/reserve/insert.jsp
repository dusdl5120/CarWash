<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->

<style>
	
</style>

<body>
	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->
	<div class="container">
		<div class="rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>예약하기</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		<!-- 예약하기 -->
		<form method="post" id="form" class="form"> 
			<div class="row reserv-form-div"> 
				<div class="col-md-12"> 
			
					<div class="text-left reserv-label">
						<label>&nbsp; 고객정보입력 <img src="<c:url value='/resources/images/info.png'/>"></label>
					</div>
					
					<div class="row reserv-form-row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="reserv_name">예약자이름<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_name" name="reserv_name">
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserv_phone">예약자 휴대폰번호<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_phone" name="reserv_phone">
						</div>
						<div class="col-md-2"></div>
					</div><br>
					
					<div class="row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="reserv_email">이메일(선택사항)</label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="reserv_email" name="reserv_email">
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserve_passwd">비밀번호<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="password" class="input form-control" id="reserve_passwd" name="reserve_passwd">
						</div>
						<div class="col-md-2"></div>
					</div><br>
					 
				</div>
			</div>
			<br> <br>
			
			
			<div class="row reserv-form-div"> 
				<div class="col-md-12"> 
			
					<div class="text-left reserv-label">
						<label>&nbsp; 예약정보입력 <img src="<c:url value='/resources/images/reserved.png'/>"></label>
					</div>
					
					<div class="row reserv-form-row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="sido_name">지역선택<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-2 text-left"> 
							<c:if test="${!empty sidoList}" >
							   <select class="form-control select" name="sido_name" id="sido_name" onchange="loadCity(this.value)">
							      <c:forEach var="sido" items="${sidoList}">
							         <option value="${sido.sido_name}">${sido.sido_name}</option>
							      </c:forEach>
							   </select>
							</c:if> 
						</div> 
						<div class="col-md-2 text-left"> 
						   <c:if test="${!empty sidoList}" >
							   <select class="form-control select" name="city_name" id="city_name">
							      <%-- <c:forEach var="city" items="${cityList}">
							         <option value="${city.city_name}">${city.city_name}</option>
							      </c:forEach> --%>
							   </select>
							</c:if> 
						</div>
					</div><br>    
					 
					 
					<div class="row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="busin_place_name">사업장명<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-5 text-left"> 
						    <c:if test="${!empty businNameList}" >
							   <select class="form-control select" name="busin_place_name" id="busin_place_name">
							      <c:forEach var="bn" items="${businNameList}">
							         <option value="${bn.busin_place_name}">${bn.busin_place_name}</option>
							      </c:forEach>
							   </select>
							</c:if> 
						</div>
						<div class="col-md-2"></div>
					</div><br>
					 
					 
					<div class="row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="reserv_date">예약날짜<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control datepicker" id="datepicker" name="reserv_date" data-date-format="yyyy-mm-dd" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="busin_place_name">예약시간<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="timepicker" name="reserv_time" readonly>
						</div>
						<div class="col-md-2"></div>
					</div><br>
					

					<div class="row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="carwash_type">서비스유형<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<select class="custom-select" name="carwash_type" id="carwash_type">
								<option value="1">손세차</option>
								<option value="2">스팀세차</option>
							</select>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="car_model">차량모델명<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" id="car_model" name="car_model" placeholder="예) 아반떼MD">
						</div>
						<div class="col-md-2"></div>
					</div><br>
					
										
					<div class="row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="category">차량분류<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<c:if test="${!empty categoryList}" >
							   <select class="form-control select" name="category" id="category">
							      <c:forEach var="ctg" items="${categoryList}">
							         <option value="${ctg.category}">${ctg.category}</option>
							      </c:forEach>
							   </select>
							</c:if> 
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="car_number">차량번호<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-3 text-left"> 
							<input type="text" class="input form-control" name="car_number" placeholder="예) 12가1234로 입력하세요">
						</div>
						<div class="col-md-2"></div>	
					</div><br>
					
					
					<div class="row"> 
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="category"></label>
						</div>
						<div class="col-md-8 text-left">  
							<p class="category-guide"> ※ 대형 : 승용차량 - 배기량 2,000cc이상 / 화물차량 또는 특수차량 - 총충량 10톤이상 </p>
							<p class="category-guide"> ※ 중형 : 승용차량 배기량 1,600cc cc ~ 2,000cc / 화물차 또는 특수차 총중량 3.5톤이상 10톤미만 </p>
							<p class="category-guide"> ※ 준중형 : 승용차량 - 배기량 1,300cc ~ 1,600cc</p>
							<p class="category-guide"> ※ 소형 : 승용차량 배기량 1,600cc 미만 / 화물차량 또는 특수차량 총중량 3.5톤 이하 </p>
							<p class="category-guide"> ※ 경차 : 승용차량 배기량 1,000cc 미만 / 화물차량 또는 특수차량 배기량 1,000cc 미만 </p>
						</div>
					</div><br>
					
				</div> 
			</div>
			<br> <br>
			
			
			<div class="row reserv-form-warn"> 
				<div class="col-md-12"> 
			
					<div class="text-left reserv-label-warn">
						<label>&nbsp; 유의사항 <img src="<c:url value='/resources/images/warning.png'/>"></label>
					</div>
					
					<div class="row reserv-form-row"> 
						<div class="col-md-12 text-left col-top"> 
							<p><span class="div-check"></span>&nbsp;카워시는 전국 세차장의 손세차와 스팀세차를 온라인으로 예약만 할 뿐, 결제시스템은 운영하지 않으니 참고하시기 바랍니다.</p>
							<p><span class="div-check"></span>&nbsp;회원만 예약이 가능하오니, 회원이 아니실 경우에는 회원가입 후 예약서비스를 이용해주시기 바랍니다.</p>
							<p><span class="div-check"></span>&nbsp;당일예약은 불가하오니 최소 1일 전에 예약해주시기 바랍니다.</p>
							<p><span class="div-check"></span>&nbsp;예약수정과 취소는 예약한 날짜의 1일 전 18시까지만 가능합니다.</p>
							<p><span class="div-check"></span>&nbsp;온라인으로 예약하기 어려우신 분들은 카워시 고객센터나 해당 세차장에 문의하시면 조금 더 빠른 예약이 가능합니다.</p>
							<p><span class="div-check"></span>&nbsp;전화예약의 경우 09~17시까지 가능하오니 예약하실 때 유의하시기 바랍니다.</p>
						</div>
					</div><br>
 
				</div>
			</div><br>
			
			<div class="row footer-mb"> 
				<div class="col-md-12 text-right"> 
					<button type="button" class="btn btn-insert-join" onclick="location.href='/carwash/admin/free/list'">예약하기</button>
					<button type="button" class="btn btn-dark btn-cancel-join " onclick="location.href='#'">목록</button>
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

		/* 전화번호 마스크 기능 */
		$('#reserv_phone').mask('(000)-0000-0000', {
			placeholder : "(___)-____-____"
		});

		
		/* 예약날짜 Datepicker */
		$("#datepicker").datepicker({
			autoclose: true,
	        todayBtn: 'linked',
	        todayHighlight: true
		});
		
		
		/* 예약시간 Timepicker */
		$("#timepicker").timepicker();
			
		
		/* 시도명 시군구명 onchange */
		$('#sido_name').change(function() {
			//alert($(this).val());
		});
		
		loadCity("강원도");
		
		
	});
	
	
	function loadCity(sido) {
		
		$.ajax({
			url : '/carwash/reserve/city?sido=' + sido, 		
			type : 'get',
			success : function(data) {
				
				var a = "";
				
				$.each(data,function(eky,value){
					a += '<option value="'+ value.city_name + '">' + value.city_name + '</option>'
				});
				
		   		$('#city_name').html(a);
			}
			
		});
	}
	
	
	
</script>
 
</html> 