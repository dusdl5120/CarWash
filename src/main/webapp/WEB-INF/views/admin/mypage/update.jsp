<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				
			<form method="post" id="form" class="form"> 
				<div class="row reserv-form-div"> 
					<div class="col-md-12"> 
				
						<div class="text-left reserv-label">
							<label>&nbsp; 회원정보수정 <img src="<c:url value='/resources/images/update.png'/>"></label>
						</div>
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="admin_id">관리자ID</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control input-read" id="admin_id" name="admin_id" value="${my.admin_id }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="admin_passwd">비밀번호<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="admin_passwd" name="admin_passwd">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="admin_passwd">비밀번호확인<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="admin_passwd_confirm" name="admin_passwd_confirm">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="busin_place_name">사업장명<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="busin_place_name" name="busin_place_name" value="${my.busin_place_name }">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="busin_place_code_name">사업장업종명<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<c:if test="${!empty placeCodeList}" >
										   <select class="form-control select" name="busin_place_code_name" id="busin_place_code_name">
										      <c:forEach var="pcl" items="${placeCodeList}">
										         <option value="${pcl.busin_place_code_name}" <c:out value="${my.busin_place_code_name.compareTo(pcl.busin_place_code_name )== 0? 'selected':''}"/>>${pcl.busin_place_code_name}</option>
										      </c:forEach>
										   </select>
										</c:if>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="busin_place_tele_num">사업장전화번호<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="busin_place_tele_num" name="busin_place_tele_num" value="${my.busin_place_tele_num }"> 
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="ceo_name">대표자명<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="ceo_name" name="ceo_name" value="${my.ceo_name }">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="carwash_type">세차유형<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<c:if test="${!empty carwashTypeList}" >
										   <select class="form-control select" name="carwash_type" id="carwash_type">
										      <c:forEach var="ctl" items="${carwashTypeList}">
										         <option value="${ctl.carwash_type}" <c:out value="${my.carwash_type.compareTo(ctl.carwash_type )== 0? 'selected':''}"/>>${ctl.carwash_type}</option> 
										      </c:forEach>
										   </select>
										</c:if>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="closed_date">휴무일<b>&nbsp;*</b></label>
									</div>
									<div class="col-md-8 text-left"> 
										<c:if test="${!empty closedDateList}" >
										   <select class="form-control select" name="closed_date" id="closed_date">
										      <c:forEach var="cdl" items="${closedDateList}">
										      	 <option value="${cdl.closed_date}" <c:out value="${my.closed_date.compareTo(cdl.closed_date) == 0? 'selected':''}"/>>${cdl.closed_date}</option>
										      </c:forEach>
										   </select>
										</c:if>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="road_name_addr">소재지주소<b>&nbsp;*</b></label>
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
										<label class="control-label" for="road_name_addr"></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="road_name_addr" name="road_name_addr" value="${my.road_name_addr }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="road_detail_addr"></label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="road_detail_addr" name="road_detail_addr" value="${my.road_detail_addr }">
									</div>
								</div>
							</div>
						</div><br>  
						
					</div>
				</div>
				<br> <br>
				
				<div class="row footer-mb"> 
					<div class="col-md-12 text-right"> 
						<button type="submit" class="btn btn-insert-join" id="update">수정하기</button>
						<button type="button" class="btn btn-dark btn-cancel-join " onclick="location.href='/carwash'">홈으로</button>
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
		$('#busin_place_tele_num').mask('(000)-000-0000', {
			placeholder : "(___)-___-____"
		});
		
		$('#update').click(function() {
			
			var adminId = '${my.admin_id}';
			var str = ('#form');
	
			if (confirm("입력하신 정보로 수정하시겠습니까?") == true) { 	
				
				location.href='/carwash/admin/member/myUpdate?admin_id=' + adminId;
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
	            document.getElementById('road_name_addr').value = fullRoadAddr;
	
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	        }
	    }).open();
	};
</script>

</html>



