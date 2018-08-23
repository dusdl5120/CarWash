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
										<label class="control-label" for="admin_id">관리자ID</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control input-read" id="admin_id" name="admin_id" value="${my.admin_id }">
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="admin_passwd">비밀번호</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="admin_passwd" name="admin_passwd" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="admin_passwd">비밀번호확인</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="password" class="input form-control" id="admin_passwd_confirm" name="admin_passwd_confirm" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="busin_place_name">사업장명</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="busin_place_name" name="busin_place_name" value="${my.busin_place_name }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="busin_place_code_name">사업장업종명</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="busin_place_code_name" name="busin_place_code_name" value="${my.busin_place_code_name }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="busin_place_tele_num">사업장전화번호</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="busin_place_tele_num" name="busin_place_tele_num" value="${my.busin_place_tele_num }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="ceo_name">대표자명</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="ceo_name" name="ceo_name" value="${my.ceo_name }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="carwash_type">세차유형</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="carwash_type" name="carwash_type" value="${my.carwash_type }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="closed_date">휴무일</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="closed_date" name="closed_date" value="${my.closed_date }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
						
						<div class="row reserv-form-row"> 
							<div class="offset-md-2 col-md-8 margin-bt15">  
								<div class="row">
									<div class="col-md-3 text-right col-top"> 
										<label class="control-label" for="road_name_addr">우편번호</label>
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
										<label class="control-label" for="road_name_addr">소재주주소</label>
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
										<label class="control-label" for="road_detail_addr">상세주소</label>
									</div>
									<div class="col-md-8 text-left"> 
										<input type="text" class="input form-control" id="road_detail_addr" name="road_detail_addr" value="${my.road_detail_addr }" readonly>
									</div>
								</div>
							</div>
						</div><br>  
						
					</div>
				</div>
				<br> <br>
				
				<div class="row footer-mb"> 
					<div class="col-md-12 text-right"> 
						<button type="button" class="btn btn-danger btn-cancel-reserve"  onclick="location.href='/carwash/admin/member/myDelete'">탈퇴하기</button>
						<button type="button" class="btn btn-insert-join" onclick="location.href='/carwash/admin/member/myUpdate'">수정하기</button>
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



