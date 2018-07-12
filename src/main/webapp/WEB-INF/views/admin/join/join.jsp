<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Header -->
		<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->
	
	<script src="<c:url value='/resources/vendor/jquery/jquery.mask.js'/>"></script>

   
   <script>
      $(document).ready(function(){
           $('#birth').mask('00/00/0000',{placeholder: "__/__/____"});         /* ,{placeholder: "__/__/____"} */
           $('#admin_phone').mask('(000)-0000-0000');      /* , {placeholder: "(___)-____-____"} */
      });
   </script>
	
</head>

<body>
	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->

	<div class="container-fluid">
		<div class="container">
			<div class="row">  <!-- col-md-9 col-md-offset-3 -->
				
				<div class="col-md-4"></div>
				<div class="col-md-4" style="text-align: center;">
					<h4 class="modal-titles fa fa-user">&nbsp;&nbsp;<strong>회원가입</strong>&nbsp;(<b style="color: red;">*</b>표시는 필수 입력항목입니다.)</h4>
				</div>
				<div class="col-md-4"></div>
				
					<br><br>
				
				<hr class="hr-2"> <br><br>
				
				<div style="width:100%; padding-top: 30px;">
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_id">관리자ID<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-5"> 
							<input type="text" class="input form-control" id="admin_id" name="admin_id">
						</div>
						
						<div class="col-md-2">
							<button type="button" class="btn btn-dark" style="width:100%;">중복확인</button>
						</div>
						
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_passwd">관리자비밀번호<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="password" class="input form-control" id="admin_passwd" name="admin_passwd">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_passwd">관리자비밀번호 확인<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="password" class="input form-control" id="admin_passwd" name="admin_passwd"> 
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_name">관리자이름<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="admin_name" name="admin_name">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_phone">관리자휴대폰번호<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="admin_phone" name="admin_phone" placeholder="'-' 제외하고 숫자로만 입력하세요">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
							<label class="control-label" for="busin_place_name">사업장명<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="busin_place_name" name="busin_place_name">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="busin_place_code_name">사업장업종명<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<!-- <input type="text" class="input form-control" id="busin_place_code_name" name="busin_place_code_name"> -->
							<c:if test="${!empty placeCodeList}" >
							   <select name="selectBox" id="selectBox">
							      <c:forEach var="pcl" items="${placeCodeList}">
							         <option value="${pcl.busin_place_code_name}">${pcl.busin_place_code_name}</option>
							      </c:forEach>
							   </select>
							</c:if>
						</div>
						
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="ceo_name">대표자명<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="ceo_name" name="ceo_name">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="carwash_type">세차유형<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="carwash_type" name="carwash_type">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="water_quality_permi_num">수질허가번호<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="water_quality_permi_num" name="water_quality_permi_num">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="busin_place_tele_num">소재지도로명주소<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="busin_place_tele_num" name="busin_place_tele_num">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row"> 
						<div class="col-md-1"></div>
						
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="closed_date">휴무일<b style="color: red;">&nbsp;*</b></label>
						</div>
	
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="closed_date" name="closed_date">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
				
				
				
				
				
				
				</div>
			</div>
		</div>
	</div>





	<%-- 유니 회원가입 
	
	<div class="container" style="height:850px">   
      <br><br><br><br>
      
      <!-- <p style="text-align:center; font-family:Meiryo; color: #343a40; text-decoration:underline; font-size:18px;">NOTICE</p><br> -->
      <h4 style="text-align:center; font-family:Segoe Print;">Detail</h4> <br><br>
      
      <div class="row"> 
         <div class="col-md-1"></div>
         
         <div class="col-md-2" style="font-family:돋움; text-align:right; padding-top:7px;">
            <label class="control-label" for="num">번호</label>
         </div>
         
         <div class="col-md-7" style="font-family:돋움;">
            <input type="text" class="input form-control" id="num" name="number" style="background-color:white;" value="${notice.no}" >
         </div>
         <div class="col-md-1"></div>
      </div>
      <br><br>
      
      <div class="row"> 
         <div class="col-md-1"></div>
         
         <div class="col-md-2" style="font-family:돋움; text-align:right; padding-top:7px;">
            <label class="control-label" for="sub">제목</label>
         </div>
         
         <div class="col-md-7" style="font-family:돋움;">
            <input type="text" class="input form-control" id="phone" name="phone" style="background-color:white;"  value="${notice.subject}">
         </div>
         <div class="col-md-1"></div>
      </div>
      <br><br>
      
      <div class="row"> 
         <div class="col-md-1"></div>
         
         <div class="col-md-2" style="font-family:돋움; text-align:right; padding-top:7px;">
            <label class="control-label" for="auth">작성자</label>
         </div>
         
         <div class="col-md-7" style="font-family:돋움;">
            <input type="text" class="form-control" id="birth" name="birth" data-inputmask='"mask": "(999)9999-9999"' data-mask>
         </div>
         <div class="col-md-1"></div>
      </div>
      <br><br>
      
      <div class="row"> 
         <div class="col-md-1"></div>
         
         <div class="col-md-2" style="font-family:돋움; text-align:right; padding-top:7px;">
            <label class="control-label" for="cont">내용</label>
         </div>
         
         <div class="col-md-7" style="font-family:돋움;">
            <textarea rows="8" cols="79" id="cont" name="contents" style="background-color:white;" disabled>${notice.contents}</textarea>
         </div>
         <div class="col-md-1"></div>
      </div>
      
               
      <a href="/camping/notice/list"> 
       <button type="button" class="btn11 btn-primary11 " style="color:white; font-size:15px; width:100px; height:30px; ">목록</button>
        </a>         
               
      </div> --%>




	<!-- form 태그 이전
	<div class="panel">
		<div class="panel-body">
			<h4 class="modal-titles fa fa-user">&nbsp;&nbsp;<strong>회원가입</strong>&nbsp;(<b style="color: red;">*</b> 표시는 필수 입력항목입니다.)</h4>
			<hr class="hr-1">
			
			<div class="form-group row">
			    <label for="inputName" class="col-md-2 col-form-label">이름<b style="color: red;">&nbsp;*</b></label>
			    <div class="col-md-4">
			      <input type="text" class="form-control" id="inputName" placeholder="이름을 입력하세요">
			    </div>
			</div>
			
			<div class="form-group row">
			    <label for="inputId" class="col-md-2 col-form-label">아이디<b style="color: red;">&nbsp;*</b></label>
			    <div class="col-md-3">
			      <input type="text" class="form-control" id="inputId" placeholder="아이디를 입력하세요">							      
			    </div>
			    <button type="button" class="btn btn-default">중복확인</button>
			</div>
			
			<div class="form-group row">
			    <label for="inputPassword" class="col-md-2 col-form-label">비밀번호<b style="color: red;">&nbsp;*</b></label>
			    <div class="col-md-4">
			      <input type="password" class="form-control" id="inputPassword1" placeholder="비밀번호를 입력하세요">
			    </div>
			</div>
			
			<div class="form-group row">
			    <label for="inputPassword" class="col-md-2 col-form-label">비밀번호 확인<b style="color: red;">&nbsp;*</b></label>
			    <div class="col-md-4">
			      <input type="password" class="form-control" id="inputPassword2" placeholder="비밀번호를 한번 더 입력하세요">
			    </div>
			</div>
			
			<div class="form-group row">
				<label class="col-md-4 control-label">생년월일</label>
                            <div class="col-md-3">                                                                                            
                                <select class="form-control select">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                    <option>Option 4</option>
                                    <option>Option 5</option>
                                </select>&nbsp;년&nbsp;
                                <select class="form-control select">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                    <option>Option 4</option>
                                    <option>Option 5</option>
                                </select>&nbsp;월&nbsp;
                                <select class="form-control select">
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                    <option>Option 4</option>
                                    <option>Option 5</option>
                                </select>&nbsp;일
                            </div>
                        </div>
			
			<a class="btn btn-primary" id="joinBtn">가입하기</a> 
		    <a class="btn btn-primary" id="joinCancle" href="/carwash">취소</a> 
			
		</div>
	</div>
	 -->
	
	
	
	
	
	
	
	
	
	
	
	<!-- <div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form class="form-horizontal">
						<div class="panel panel-default">
							<div style="">
								<div class="panel-body" style="margin-top: 100px; text-align: center;">
									<h4 class="modal-titles fa fa-user" style="margin-top: 30px;">&nbsp;&nbsp;<strong>회원가입</strong>&nbsp;(<b style="color: red;">*</b> 표시는 필수 입력항목입니다.)</h4>
									<hr class="my-4" style="width: 40%;">
								</div>
								<div class="panel-body form-group-separated" id="panel-form">
		
									
									<div style="margin-right: 135px;">	
										<div class="form-group">
											<label class="col-md-3 control-label" id="label-addr">주소<b style="color: red;">&nbsp;*</b></label>
											<input type="text" class="form-addr" id="input-addr" disabled/>
											<button type="button" class="btn btn-default">우편번호</button>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label" id="label-detail-addr">상세주소<b style="color: red;">&nbsp;*</b></label>
										<input type="text" class="form-addr" id="input-detail-addr1" /><input type="text" class="form-addr" id="input-detail-addr2"style="margin-left:5px;" />
									</div>
									
									<div style="margin-right: -10px;">	
										<div class="form-group">
											<label class="col-md-3 control-label">전화번호<b style="color: red;">&nbsp;&nbsp;*</b></label>
											<select class="select-md6">
												<option>02</option>
												<option>031</option>
												<option>032</option>
												<option>041</option>
												<option>042</option>
												<option>043</option>
											</select>&nbsp;&nbsp;-&nbsp;&nbsp;
											<input type="text" class="form-addr" id="input-tel1" maxlength="4"/>&nbsp;-&nbsp;
											<input type="text" class="form-addr" id="input-tel2" maxlength="4"/>
										</div>
									</div>
									
									<div style="margin-right: -10px;">	
										<div class="form-group">
											<label class="col-md-3 control-label">휴대전화<b style="color: red;">&nbsp;&nbsp;*</b></label>
											<select class="select-md6">
												<option>010</option>
												<option>011</option>
												<option>016</option>
												<option>017</option>
												<option>018</option>
												<option>019</option>
											</select>&nbsp;&nbsp;-&nbsp;&nbsp;
											<input type="text" class="form-addr" id="input-phone1" maxlength="4"/>&nbsp;-&nbsp;
											<input type="text" class="form-addr" id="input-phone2" maxlength="4"/>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label">이메일주소<b style="color: red;">&nbsp;&nbsp;</b></label>
										<input type="email" class="form-input-control" placeholder="이메일주소를 입력하세요" />
									</div>
	
									<div style="margin-right: 291px;">	
										<div class="form-group">
											<label class="col-md-3 col-xs-12 control-label" style="padding-right: 2px; margin-right: 24px;">수신여부</label>
											<label class="check"><input type="checkbox" class="icheckbox" id="chkSms"/>&nbsp;SMS</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
											<label class="check"><input type="checkbox" class="icheckbox" id="chkEmail"/>&nbsp;이메일</label> 
										</div>
									</div>
									
								    <a class="btn btn-primary" id="joinBtn">가입하기</a> 
								    <a class="btn btn-primary" id="joinCancle" href="/carwash">취소</a> 
									
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> -->
	
	<!-- Contents -->
	
	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>
$(document).ready(function($){
	
	/* $('#chkSms').prop('checked', true); 	// SMS 수신여부 Checks
	$('#chkSms').prop('checked', false); 	// SMS 수신여부 Unchecks

	$('#chkEmail').prop('checked', true); 	// 이메일 수신여부 Checks
	$('#chkEmail').prop('checked', false); 	// 이메일 수신여부 Unchecks */
	
	

	
});



</script>

</html>



