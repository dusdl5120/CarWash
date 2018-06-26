<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>CARWASH MAIN</title>

<link rel="icon" href="favicon.ico" type="image/x-icon" />
<!-- Bootstrap core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- <link href="resources/css/theme-default.css" rel="stylesheet"> -->

<!-- Custom fonts for this template -->
<link href="../resources/vendor/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Bootstrap core JavaScript -->
<script src="../resources/vendor/jquery/jquery.min.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="../resources/vendor/scrollreveal/scrollreveal.min.js"></script>
<script src="../resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Custom scripts for this template -->
<script src="../resources/js/creative.min.js"></script>

<!-- Plugin CSS -->
<link href="../resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/creative.min.css" rel="stylesheet">

</head>

<body>
	<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->
	
	<!-- Contents -->

	<div class="container-fluid">
		<div class="container">
			<div class="row"> <!--  col-md-9 col-md-offset-3 -->
				
				<div class="col-md-4 " style="background-color: skyblue;"></div>
				<div class="col-md-4" style="text-align: center;">
					<h4 class="modal-titles fa fa-user">&nbsp;&nbsp;<strong>회원가입</strong>&nbsp;(<b style="color: red;">*</b>표시는 필수 입력항목입니다.)</h4>
				</div>
				<div class="col-md-4" style="background-color: green;"></div>
				
					<br><br>
				
				<hr class="hr-1">

				
				
					
			</div>
		</div>
	</div>




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
$(function() {
	
	$('#chkSms').prop('checked', true); 	// SMS 수신여부 Checks
	$('#chkSms').prop('checked', false); 	// SMS 수신여부 Unchecks

	$('#chkEmail').prop('checked', true); 	// 이메일 수신여부 Checks
	$('#chkEmail').prop('checked', false); 	// 이메일 수신여부 Unchecks
	
	
	// 휴대폰번호 숫자만 입력
	$("#input-phone1").keyup(function(){							
		$(this).val( $(this).val().replace(/[^0-9]/g,"") );		// 첫번째 input 박스
	});		

	$("#input-phone2").keyup(function(){
		$(this).val( $(this).val().replace(/[^0-9]/g,"") );		// 두번째 input 박스
	});
	
	
	// 전화번호 숫자만 입력
	$("#input-tel1").keyup(function(){							// 첫번째 input 박스
		$(this).val( $(this).val().replace(/[^0-9]/g,"") );
	});

	$("#input-tel2").keyup(function(){
		$(this).val( $(this).val().replace(/[^0-9]/g,"") );		// 두번째 input 박스
	});

	
});


</script>

</html>



