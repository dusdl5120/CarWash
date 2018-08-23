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
            <label>&nbsp;&nbsp;<strong>예약수정</strong></label>
         </div>
         <div class="col-md-4"></div>

         <br><br>

      </div>
      
      <!-- 예약하기 -->
      <form method="post" id="form" class="form"> 
         <div class="row reserv-form-div"> 
            <div class="col-md-12"> 
               <input type="hidden" name="reserv_no" value="${reserve.reserv_no }"/>
               <input type="hidden" id="sido_h" value="${reserve.sido_name}" />
               <input type="hidden" id="city_h" value="${reserve.city_name}" />
               <input type="hidden" id="businm_h" value="${reserve.busin_place_name}" />
         
               <div class="text-left reserv-label">
                  <label>&nbsp; 고객정보입력 <img src="<c:url value='/resources/images/info.png'/>"></label>
               </div>
               
               <div class="row reserv-form-row"> 
                  <div class="col-md-2 text-right col-top"> 
                     <label class="control-label" for="reserv_name">예약자이름<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="text" class="input form-control" id="reserv_name" name="reserv_name" value="${reserve.reserv_name }">
                  </div>
                  <div class="col-md-2 text-right col-top">
                     <label class="control-label" for="reserv_phone">예약자 휴대폰번호<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="text" class="input form-control" id="reserv_phone" name="reserv_phone" value="${reserve.reserv_phone }">
                  </div>
                  <div class="col-md-2"></div>
               </div><br>
               
               <div class="row"> 
                  <div class="col-md-2 text-right col-top"> 
                     <label class="control-label" for="reserv_email">이메일(선택)</label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="text" class="input form-control" id="reserv_email" name="reserv_email" value="${reserve.reserv_email }">
                  </div>
                  <div class="col-md-2 text-right col-top">
                     <label class="control-label" for="reserv_passwd">비밀번호<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="password" class="input form-control" id="reserv_passwd" name="reserv_passwd" value="${reserve.reserv_passwd }">
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
                        <select class="custom-select" name="sido_name" id="sido_name" onchange="loadCity(this.value,true)">
                           <c:forEach var="sido" items="${sidoList}">
                              <option value="${sido.sido_name}" <c:out value="${reserve.sido_name.compareTo(sido.sido_name ) == 0? 'selected':''}"/>>${sido.sido_name}</option>
                           </c:forEach>
                        </select>
                     </c:if>  
                  </div> 
                  <div class="col-md-2 text-left"> 
                     <c:if test="${!empty cityList}" > 
                        <select class="custom-select" name="city_name"  id="city_name" onchange="loadBusiName(true)">
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
                        <select class="custom-select" name="busin_place_name" id="busin_place_name">
                           <%-- <c:forEach var="bn" items="${businNameList}">
                              <option value="${bn.busin_place_name}">${bn.busin_place_name}</option>
                           </c:forEach> --%>
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
                     <input type="text" class="input form-control datepicker" id="datepicker" name="reserv_date" data-date-format="yyyy-mm-dd" value="${reserve.reserv_date }" readonly>
                  </div>
                  <div class="col-md-2 text-right col-top">
                     <label class="control-label" for="busin_place_name">예약시간<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="text" class="input form-control" id="timepicker" name="reserv_time" value="${reserve.reserv_time }" readonly>
                  </div>
                  <div class="col-md-2"></div>
               </div><br>
               

               <div class="row"> 
                  <div class="col-md-2 text-right col-top"> 
                     <label class="control-label" for="carwash_type">서비스유형<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <select class="custom-select" name="carwash_type" id="carwash_type">
                        <option value="손세차">손세차</option>
                        <option value="스팀세차">스팀세차</option>
                     </select>
                  </div>
                  <div class="col-md-2 text-right col-top">
                     <label class="control-label" for="car_model">차량모델명<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="text" class="input form-control" id="car_model" name="car_model" value="${reserve.car_model }">
                  </div>
                  <div class="col-md-2"></div>
               </div><br>
               
                              
               <div class="row">  
                  <div class="col-md-2 text-right col-top">
                     <label class="control-label" for="category">차량분류<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <c:if test="${!empty categoryList}" >
                        <select class="custom-select" name="category" id="category">
                           <c:forEach var="ctg" items="${categoryList}">
                              <option value="${ctg.category}" <c:out value="${reserve.category.compareTo(ctg.category ) == 0? 'selected':''}"/>>${ctg.category}</option>
                           </c:forEach>
                        </select>
                     </c:if> 
                  </div>
                  <div class="col-md-2 text-right col-top">
                     <label class="control-label" for="car_number">차량번호<b>&nbsp;*</b></label>
                  </div>
                  <div class="col-md-3 text-left"> 
                     <input type="text" class="input form-control" id="car_number" name="car_number" value="${reserve.car_number }">
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
               

               <div class="row"> 
                  <div class="col-md-2 text-right col-top"> 
                     <label class="control-label" for="request_message">추가 요청사항</label>
                  </div>
                  <div class="col-md-8 text-left"> 
                     <input type="text" class="input form-control" id="request_message" name="request_message" value="${reserve.request_message }">
                  </div>
                  <div class="col-md-2"></div>
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
               <button type="submit" class="btn btn-insert-join" onclick="location.href='/carwash/user/reserve/update'">수정하기</button>
               <button type="button" class="btn btn-dark btn-cancel-join " onclick="location.href='/carwash/user/reserve/list'">목록</button>
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
			autoclose : true,
			todayBtn : 'linked',
			todayHighlight : true
		});

		/* 예약시간 Timepicker */
		$("#timepicker").timepicker();

		/* 차량모델명 글자수 제한 */
		$("#car_model").keyup(function() {

			if ($(this).val().length > 13) {
				$(this).val($(this).val().substring(0, 13));
				alert('최대 13글자까지 입력할 수 있습니다.');
			};
		});

		/* 차량번호 글자수 제한 */
		$("#car_number").keyup(function() {

			if ($(this).val().length > 9) {
				$(this).val($(this).val().substring(0, 9));
				alert('최대 9글자까지 입력할 수 있습니다.');
			};
		});

		/* 추가 요청사항 글자수 제한 */
		$("#request_message").keyup(function() {

			if ($(this).val().length > 50) {
				$(this).val($(this).val().substring(0, 50));
				alert('최대 50글자까지 입력할 수 있습니다.');
			};
		});

		/* 시도명, 시군구명, 사업장명 데이터 가져와서 각 변수에 담기 */
		var sido = '${reserve.sido_name}';
		var city = '${reserve.city_name}';
		var busin = '${reserve.busin_place_name}';

		//alert(sido + city + busin);
		
		/* 위에서 loadCity(this.value, true)라는 함수를 사용하고, true라는 boolean 타입으로 처음 값 지정 후 false로 호출 */
		loadCity(sido, false);
		
		/* 위에서 loadBusiName(true)라는 함수를 사용하고, true라는 boolean 타입으로 처음 값을 지정 후 false로 호출 */
		loadBusiName(false); 

	});
	

	/* 지역선택 SELECT 부분 처음 시도명 선택했을 때 그에 해당하는 시군구명 출력 */
	/* false라는 데이터타입에 change 변수를 받아서 함수 실행 */
	function loadCity(sido, change) {

		/* 위에 input태그 hidden으로 id의 값이 city_h이고, 그에 해당하는 value 값을 가져와서 변수 city_h에 담는다 */
		var city_h = $('#city_h').val();

		$.ajax({
			url : '/carwash/user/reserve/city?sido=' + sido,
			type : 'get', 		
			async : false,
			
			/* "data: " => 이 data는 보내는 값  */
			/* 이 data는 받아오는 값 */
			success : function(data) {

				var a = "";

				$.each(data, function(key, value) {

					/* hidden값으로 받았던 city_h랑 city_name의 값이 같고 not change일 경우 선택된 값을 가져오고 */
					if (city_h == value.city_name && !change) {
						a += '<option value="' + value.city_name +'" selected >' + value.city_name + '</option>';
					
					/* 그렇지 않으면 시군구명을 찍어주기 */
					} else {
						a += '<option value="' + value.city_name +'" >' + value.city_name + '</option>';
					}
				});
				
				/* 그러고 시군구명 출력 */
				$('#city_name').html(a);
			}
		});
	};

	/* 지역선택 시도명과 시군구명을 SELECT 했을 경우 그에 해당하는 사업장명을 출력 */
	function loadBusiName(change) {

		var sido;
		var city;
		var businm_h;

		if (!change) {

			sido = $('#sido_h').val();
			city = $('#city_h').val();
			businm_h = $('#businm_h').val();

		} else {

			sido = $('#sido_name').val();
			city = $('#city_name').val();
		}

		$.ajax({
			url : '/carwash/user/reserve/businName?sido=' + sido + '&city=' + city,
			type : 'get',
			async : false,
			success : function(data) {

				var a = "";

				$.each(data, function(key, value) {

					if (businm_h == value.busin_place_name && !change) {
						a += '<option value="' + value.busin_place_name +'" selected >' + value.busin_place_name + '</option>';

					} else {
						a += '<option value="' + value.busin_place_name +'" >' + value.busin_place_name + '</option>';
					}
				});

				$('#busin_place_name').html(a);
			}

		});
	};
</script>
 
</html> 