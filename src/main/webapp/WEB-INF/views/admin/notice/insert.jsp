<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Header -->
		<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->
</head>

<body>
	

	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->

	<div class="container">
		<div class="rows container-rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>공지사항</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

			<hr class="hr-2">
		</div>
		 
		<form method="post" id="form" class="form"> 
			<div class="row reserv-form-div"> 
				<div class="col-md-12"> 
					
					<div class="text-left reserv-label">
						<label>&nbsp; 등록하기 <img src="<c:url value='/resources/images/insert.png'/>"></label>
					</div>
					
					
					<div class="row detail-margin">  
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="admin_id">작성자</label>
						</div>
						<div class="col-md-9 text-left"> 
							<input type="text" class="input form-control input-read" id="admin_id" name="admin_id" value="${adNoticeVO.admin_id }" disabled>
						</div> 
					</div><br>
					
					
					<div class="row detail-margin"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="title">제목<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-9 text-left"> 
							<input type="text" class="input form-control" id="title" name="title">
						</div>
					</div><br>
 
					
					<div class="row detail-margin"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="contents">내용<b>&nbsp;*</b></label>
						</div>
						<div class="col-md-9 text-left"> 
							<textarea class="input form-control" id="contents" name="contents" rows="10"></textarea>
						</div>
					</div><br>
					
				</div>
			</div>
			<br> <br> 
			
			<div class="row footer-mb"> 
				<div class="col-md-12 text-right"> 
					<button type="submit" class="btn btn-insert-join" onclick="location.href='/carwash/admin/notice/insert'">등록</button>
					<button type="button" class="btn btn-dark btn-cancel-join" onclick="location.href='/carwash/admin/notice/list'">목록</button>
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

		/* 제목 글자수 제한 */
		$("#title").keyup(function() {

			if ($(this).val().length > 50) {
				$(this).val($(this).val().substring(0, 50));
				alert('최대 50글자까지 입력할 수 있습니다.');
			};
		});

		/* 내용 글자수 제한 */
		$("#title").keyup(function() {

			if ($(this).val().length > 3000) {
				$(this).val($(this).val().substring(0, 3000));
				alert('최대 3000글자까지 입력할 수 있습니다.');
			};
		});

	});
</script>

</html>



