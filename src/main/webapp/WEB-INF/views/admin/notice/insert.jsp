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

	<div class="container" style="height: 820px;">
		<div class="rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label style="font-size: 20px;">&nbsp;&nbsp;<strong>글쓰기</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

			<hr class="hr-2">
		</div>
		 
		<form method="post" style="width: 100%; text-align: webkit-center;"> 
			<div style="width:100%; padding-top: 30px;">
			 

				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1 text-right" style="padding-top: 6px;"> 
						<label class="control-label" for="admin_id">작성자</label>
					</div>
					<div class="col-md-11"> 
						<input type="text" class="input form-control" style="border: none;" id="admin_id" name="admin_id" value="${adNoticeVO.admin_name }" disabled>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1 text-right" style="padding-top: 6px;"> 
						<label class="control-label" for="title">제목<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-11"> 
						<input type="text" class="input form-control" id="title" name="title">
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1 text-right" style="padding-top: 6px;"> 
						<label class="control-label" for="contents">내용<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-11"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10"></textarea>
					</div>
				</div>
				<br> <br>
				
				
				
				<div class="row" style="margin-top: 25px;"> 
					<div class="col-md-12"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/list'">취소</button>
						<c:if test="${admin}">
							<button type="submit" class="btn btn-dark" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/notice/insert'">등록</button>
						</c:if>
					</div>
				</div>
				<br> <br>
				
				
			</div>
		</form>
		

	</div>




	<!-- Contents -->

	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>
	$(function() {

	});
</script>

</html>



