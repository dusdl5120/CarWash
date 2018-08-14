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
				<label style="font-size: 15px;">&nbsp;&nbsp;<strong>가입하기</strong>&nbsp;</label>
			</div>
			<div class="col-md-2"></div>
			
				<br><br>
			
			<hr class="hr-2"> <br><br>
			
			<form method="post" style="width: 100%;" id="form"> 
				<div style="width:100%; padding-top: 30px;">
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_id">관리자ID<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-5"> 
							<input type="text" class="input form-control" id="admin_id" name="admin_id">
						</div>
						<div class="col-md-2">
							<button type="button" class="btn btn-dark" id="dup" style="width:100%;">중복확인</button> 
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
	
					<div class="row" style="margin-bottom: -30px;"> 
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
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="admin_passwd">관리자비밀번호 확인<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<input type="password" class="input form-control" id="admin_passwd_confirm" name="admin_passwd_confirm"> 
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
	
	
					<div class="row" style="margin-bottom: -30px;"> 
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
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="busin_place_code_name">사업장업종명<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<c:if test="${!empty placeCodeList}" >
							   <select class="form-control select" name="busin_place_code_name" id="busin_place_code_name">
							      <c:forEach var="pcl" items="${placeCodeList}">
							         <option value="${pcl.busin_place_code_name}">${pcl.busin_place_code_name}</option>
							      </c:forEach>
							   </select>
							</c:if>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;">  
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="busin_place_tele_num">사업장전화번호<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="busin_place_tele_num" name="busin_place_tele_num">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
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
					
					
					<div class="row" style="margin-bottom: -30px;"> 
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
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="carwash_type">세차유형<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<c:if test="${!empty carwashTypeList}" >
							   <select class="form-control select" name="carwash_type" id="carwash_type">
							      <c:forEach var="ctl" items="${carwashTypeList}">
							         <option value="${ctl.carwash_type}">${ctl.carwash_type}</option>
							      </c:forEach>
							   </select>
							</c:if>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="closed_date">휴무일<b style="color: red;">&nbsp;*</b></label>
						</div>
						<div class="col-md-7"> 
							<c:if test="${!empty closedDateList}" >
							   <select class="form-control select" name="closed_date" id="closed_date">
							      <c:forEach var="cdl" items="${closedDateList}">
							         <option value="${cdl.closed_date}">${cdl.closed_date}</option>
							      </c:forEach>
							   </select>
							</c:if>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;">
							<label class="control-label" for="road_name_addr">소재지도로명주소<b style="color: red;">&nbsp;*</b></label>
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
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;"></div>
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="road_name_addr" name="road_name_addr">
							<span id="guide" style="color:#999"></span>
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-bottom: -30px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2" style="text-align: right; padding-top: 6px;"></div>
						<div class="col-md-7"> 
							<input type="text" class="input form-control" id="road_detail_addr" name="road_detail_addr" placeholder="상세주소">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br> <br>
					
					
					<div class="row" style="margin-top: 25px;"> 
						<div class="col-md-1"></div>
						<div class="col-md-2"></div>
						<div class="col-md-7"> 
							<button type="submit" class="btn btn-dark" onclick="location.href='/carwash/admin/member/join'" id="save" style="width:15%;">가입하기</button>
							<button type="button" class="btn btn-dark" style="width:15%; margin-left: 10px;">취소</button>
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
	
	/* 전화번호 마스크 기능 */	
	$('#busin_place_tele_num').mask('(000)-000-0000', {
		placeholder : "(___)-___-____"
	});
	
	/* $('#busin_place_tele_num').keyup(function() {
		
		if($(this))
		
        alert($(this).val());
    }); */

    
    $('#save').click(function() {
    	var str = document.getElementById('form');
    	str.submit();
    	alert("회원가입이 성공적으로 완료되었습니다.");
    });
});	
	/* 
function save() {

//		alert($("#password_hint").val());

//		alert($("#member_HP").val());

	var str3 = document.getElementById('join');

	str3.submit();

	alert("가입이 완료되었습니다.")

}
 */
$(document).ready(function(){
	
	/* 컬럼 유효성검사 */
	$("#form").validate({
		rules : { // 규칙 정해줘야햠
			admin_id : { 
				required : true,
				minlength : 4
			},
			admin_passwd : {
				required : true,
				minlength : 8,
				regex : /^(?=\w{8,15}$)\w*(\d[A-z]|[A-z]\d)\w*$/
			},
			admin_passwd_confirm : {
				required : true,
				minlength : 8,
				equalTo : admin_passwd
			},
			busin_place_name : { 
				required : true,
				minlength : 2
			},
			busin_place_tele_num : { 
				required : true,
				minlength : 6
			}
		},
		//규칙체크 실패시 출력될 메시지
		messages : {
			admin_id : {
				required : "필수입력사항입니다.",
				minlength : "최소 {0}글자이상이어야 합니다"
			},
			admin_passwd : {
				required : "필수입력사항입니다",
				minlength : "최소 {0}글자이상이어야 합니다",
				regex : "영문자와 숫자로 이루어져있으며 최소 하나이상 포함"
			},
			admin_passwd_confirm : {
				required : "필수입력사항입니다",
				minlength : "최소 {0}글자이상이어야 합니다",
				equalTo : "비밀번호가 일치하지 않습니다."
			},
			busin_place_name : {
				required : "필수입력사항입니다.",
				minlength : "최소 {0}글자이상이어야 합니다"
			},
			busin_place_tele_num : {
				required : "필수입력사항입니다.",
				minlength : "숫자만 입력해주세요",
			}
		}
	});

	$.validator.addMethod("regex", function(value, element, regexp) {
		var re = new RegExp(regexp);
		return this.optional(element) || re.test(value);
	}, "Please check your input.");

});

$(document).ready(function(){
	$("#dup").on("click",function(){
		var id = $("#admin_id").val();//id가 id인 input 태그에 입력된 id 가져오기
		$.ajax({
			async:true,
			type:'POST',
			data:id,
			url:"carwash/admin/member/dup",
			dataType:"json",
			contentType:"application/json; charset=UTF-8",
			success : function(data){
				if(data.cnt > 0){
					alert("동일한 아이디가 존재합니다. 다시 입력해주세요.");
				}else{
					alert("사용가능한 아이디입니다.");
				}
			}
		});
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



