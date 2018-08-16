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

			<div class="col-md-4"></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>수정하기</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		
		<form method="post" class="form"> 
			<div class="form-div">
			
			 	<input type="hidden" name="id" value="${board.id }" />
			 	
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="registered_id">작성자</label>
					</div>
					<div class="col-md-11"> 
						<input type="text" class="input form-control" style="border: none;" id="registered_id" name="registered_id" value="${board.registered_id }" readonly>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="title">제목<b>&nbsp;*</b></label>
					</div>
					<div class="col-md-11"> 
						<input type="text" class="input form-control" id="title" name="title" value="${board.title }"/> 
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="contents">내용<b>&nbsp;*</b></label>
					</div>
					<div class="col-md-11"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10">${board.contents }</textarea>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row form-row"> 
					<div class="col-md-1 text-right col-top"> 
						<label class="control-label" for="contents">첨부파일</label>
					</div>
					<div class="col-md-11"> 
						<input type="file" class="input form-control" name="file_name" />
					</div>
				</div>
				<br> <br>
				
				
				<div class="row"> 
					<div class="col-md-12"> 
						<button type="button" class="btn btn-dark btn-cancel" onclick="location.href='/carwash/admin/free/list'">취소</button>
						<button type="submit" class="btn btn-dark btn-update" onclick="location.href='/carwash/admin/free/update?id=${board.id}'">수정</button>
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



