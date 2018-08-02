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
	<div class="container" style="height: 950px;">
		<div class="row" style="margin-top: 16%;">  
			
			<div class="col-md-2"></div>
			<div class="col-md-8" style="text-align: center; color: #6c757d;">
				<label style="font-size: 20px;">&nbsp;&nbsp;<strong>회원정보</strong>&nbsp;</label>
			</div>
			<div class="col-md-2"></div>
			
				<br><br>
			
			<hr class="hr-2"> <br><br>
			
			<form style="width: 100%;"> 
				<div style="width:100%; padding-top: 30px;">
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_id">관리자ID</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							 <input type="text" class="input form-control" id="admin_id" name="admin_id" value="${my.admin_id }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
	
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_passwd">관리자비밀번호</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="password" class="input form-control" id="admin_passwd" name="admin_passwd" disabled> 
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_passwd">관리자비밀번호 확인</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="password" class="input form-control" id="admin_passwd_confirm" name="admin_passwd_confirm" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
	
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
							<label class="control-label" for="busin_place_name">사업장명</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="busin_place_name" name="busin_place_name" value="${my.busin_place_name }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="busin_place_code_name">사업장업종명</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="busin_place_code_name" name="busin_place_code_name" value="${my.busin_place_code_name }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;">  
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="busin_place_tele_num">사업장전화번호</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="busin_place_tele_num" name="busin_place_tele_num" value="${my.busin_place_tele_num }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="ceo_name">대표자명</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="ceo_name" name="ceo_name" value="${my.ceo_name }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="carwash_type">세차유형</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="carwash_type" name="carwash_type" value="${my.carwash_type }" readonly>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="closed_date">휴무일</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="closed_date" name="closed_date" value="${my.closed_date }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="road_name_addr">우편번호</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="zip_code" name="zip_code"  value="${my.zip_code }" disabled>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="road_name_addr">소재지주소</label>	
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="road_name_addr" name="road_name_addr"  value="${my.road_name_addr }" disabled>
							<span id="guide" style="color:#999"></span>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="road_detail_addr">상세주소</label>
						</div>
						<div class="col-md-7" style="text-align: left;"> 
							<input type="text" class="input form-control" id="road_detail_addr" name="road_detail_addr"  value="${my.road_detail_addr }" disabled>
							<span id="guide" style="color:#999"></span>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-top: 25px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2"></div>
						<div class="col-md-7"> 
							<button type="button" class="btn btn-danger" onclick="location.href='/carwash/admin/member/myDelete'" style="width:15%;">탈퇴하기</button>
							<button type="button" class="btn btn-dark" onclick="location.href='/carwash/admin/member/myUpdate'" style="width:15%; margin-left: 10px;">수정하기</button>
							<button type="button" class="btn btn-dark" onclick="location.href='/carwash'" style="width:15%; margin-left: 10px;">취소</button>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
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



