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
				<label style="font-size: 20px;">&nbsp;&nbsp;<strong>수정하기</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		
		<form method="post" style="width: 100%; text-align: webkit-center;"> 
			<div style="width:100%; padding-top: 30px;">
			
			 	<input type="hidden" name="id" value="${board.id }" />
			 	
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="registered_id">작성자<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7"> 
						<input type="text" class="input form-control" id="registered_id" name="registered_id" value="${board.registered_id }">
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="title">제목<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7"> 
						<input type="text" class="input form-control" id="title" name="title" value="${board.title }"/> 
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="contents">내용<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10">${board.contents }</textarea>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="contents">첨부파일</label>
					</div>
					<div class="col-md-7"> 
						<input type="file" class="input form-control" name="file_name" />
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-top: 25px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>
					<div class="col-md-7"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/free/list'">취소</button>
						<button type="submit" class="btn btn-dark" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/free/update?id=${board.id}'">수정</button>
					</div>
					<div class="col-md-2"></div>
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



