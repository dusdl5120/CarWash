<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
	
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->

<style>
	
	
	
</style>
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
				<label>&nbsp;&nbsp;<strong>글쓰기</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>
		</div>


		<form method="post" class="form"> 
			<div class="form-div">
			 
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="registered_id">작성자</label>
					</div>
					<div class="col-md-11 text-left"> 
						<input type="text" class="input form-control" style="border: none;" id="registered_id" name="registered_id" value="${adFreeVO.registered_id }" disabled>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="title">제목<b>&nbsp;*</b></label>
					</div>
					<div class="col-md-11 text-left"> 
						<input type="text" class="input form-control" id="title" name="title">
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="contents">내용<b>&nbsp;*</b></label>
					</div>
					<div class="col-md-11 text-left"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10"></textarea>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="file_name">첨부파일</label>
					</div>
					<div class="col-md-11 text-left"> 
						<input type="file" class="input form-control" name="file_name"/>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row-button"> 
					<div class="col-md-12 text-right"> 
						<button type="button" class="btn btn-dark btn-cancel" onclick="location.href='/carwash/admin/free/list'">취소</button>
						<button type="submit" class="btn btn-insert" onclick="location.href='/carwash/admin/free/insert'">등록</button>
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



