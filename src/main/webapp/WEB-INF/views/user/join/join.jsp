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
		<div class="row" style="margin-top: 16%;">  
			
			<div class="col-md-4"></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>가입하기</strong>&nbsp;</label>
			</div>
			<div class="col-md-4"></div>
			
				<br><br>
			
			<form method="post" id="form" class="form"> 
				<div class="form-div">
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="user_id">사용자ID<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-5"> 
							<input type="text" class="input form-control" id="user_id" name="user_id">
						</div>
						<div class="col-md-2">
							<button type="button" class="btn btn-dark" id="dup" style="width:100%;">중복확인</button> 
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
	
					<div class="row form-row">  
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="user_passwd">사용자비밀번호<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<input type="password" class="input form-control" id="user_passwd" name="user_passwd">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="user_passwd">비밀번호 확인<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<input type="password" class="input form-control" id="user_passwd_confirm" name="user_passwd_confirm"> 
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
	
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="user_name">사용자이름<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="user_name" name="user_name">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
						
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="phoneNumber">휴대폰번호<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-5"> 
							<input type="text" class="input form-control" id="phoneNumber" name="phoneNumber">
						</div>
						<div class="col-md-2">
							<label class="check"><input type="checkbox" class="icheck" name="phoneCheckYn" name="phoneCheckYn"/>&nbsp;SMS 수신여부</label>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="birth">생년월일</label>
						</div>
						<div class="col-md-7">
							<input type="text" class="input form-control" id="birth" name="birth">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row form-row">  
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="email">이메일주소</label>
						</div>
						<div class="col-md-5"> 
							<input type="text" class="input form-control" id="email" name="email">
						</div>
						<div class="col-md-2">
							<label class="check"><input type="checkbox" class="icheck" name="emailCheckYn" name="emailCheckYn"/>&nbsp;EMAIL 수신여부</label>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="address">도로명주소</label>
						</div>
						<div class="col-md-5"> 
							<input type="text" class="input form-control" id="zip_code" name="zip_code">
						</div>
						<div class="col-md-2">
							<button type="button" class="btn btn-dark" onclick="postCode()" style="width:100%;">우편번호찾기</button>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top"></div>
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="address" name="address">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row form-row"> 
						<div class="col-md-1"></div>
						<div class="col-md-2 text-right col-top"></div>
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="address_detail" name="address_detail" placeholder="상세주소">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					<div class="row form-row-button"> 
						<div class="col-md-12 text-center"> 
							<button type="submit" class="btn btn-insert-join" onclick="location.href='/carwash/user/member/join'">가입하기</button>
							<button type="button" class="btn btn-dark btn-cancel-join">취소</button>
						</div>
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

var dup = -1;	/* 아이디 중복확인을 위한 초기값 */

$(document).ready(function(){
	
	/* 전화번호 마스크 기능 */	
	$('#phoneNumber').mask('(000)-0000-0000', {
		placeholder : "(___)-____-____"
	});
	
	/* 생년월일 마스크 기능 */
	$('#birth').mask('0000/00/00', {
		placeholder : "____/__/__"
	});
});	
	
	
$(document).ready(function(){
	
	/* 컬럼 유효성검사 */
	$("#form").validate({
		rules : { // 규칙 정해줘야햠
			user_id : { 
				required : true,
				minlength : 4
			},
			user_passwd : {
				required : true,
				minlength : 5,
				regex : /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{5,}$/
			},
			user_passwd_confirm : {
				required : true,
				minlength : 5,
				equalTo : user_passwd
			},
			user_name : { 
				required : true,
				minlength : 2
			},
			phoneNumber : { 
				required : true,
				minlength : 6
			}
		},
		//규칙체크 실패시 출력될 메시지
		messages : {
			user_id : {
				required : "필수입력사항입니다.",
				minlength : "최소 {0}글자 이상이어야 합니다"
			},
			user_passwd : {
				required : "필수입력사항입니다",
				minlength : "최소 {0}글자 이상이어야 합니다",
				regex : "영문자, 숫자, 특수문자로 이루어져있으며 최소 하나이상 포함해야 합니다."
			},
			user_passwd_confirm : {
				required : "필수입력사항입니다",
				minlength : "최소 {0}글자 이상이어야 합니다",
				equalTo : "비밀번호가 일치하지 않습니다."
			},
			user_name : {
				required : "필수입력사항입니다.",
				minlength : "최소 {0}글자 이상이어야 합니다",
			},
			phoneNumber : {
				required : "필수입력사항입니다.",
				regex : "숫자만 입력해주세요"
			}
		}
	});

	$.validator.addMethod("regex", function(value, element, regexp) {
		var re = new RegExp(regexp);
		return this.optional(element) || re.test(value);
	}, "Please check your input.");
	
	//$('#form').submit('test');
});

$(document).ready(function(){
	
	/* 아이디 중복확인 */
	$("#dup").on("click",function(){
		var id = $("#user_id").val();//id가 id인 input 태그에 입력된 id 가져오기
		$.ajax({
			async:true,
			type:'POST',
			data:id,
			url:"carwash/user/member/dup",
			dataType:"json",
			contentType:"application/json; charset=UTF-8",
			success : function(data){
				if(data.cnt > 0){
					alert("동일한 아이디가 존재합니다. 다시 입력해주세요.");
					dup = 1;		/* 아이디가 존재할 경우 dup의 값은 1 */
				}else{
					alert("사용가능한 아이디입니다.");
					dup = 0;		/* 아이디가 사용가능할 경우 dup의 값은 0 */
				}
			}
		});
	});
	
	/* dup의 값으로 form 전송 */
	$('#form').on('submit',function(event){
		if(dup == 0){
			alert('회원가입이 성공적으로 완료되었습니다.');
			return true;
		}
		
		if(dup == -1){		
			alert('아이디 중복확인을 해주세요');
			event.preventDefault();
			return false;
		}
		
		if(dup == 1){
			alert('동일한 아이디가 존재합니다. 다시 입력해주세요.');
			event.preventDefault();
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
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }
        }
    }).open();
}
</script>

</html>



