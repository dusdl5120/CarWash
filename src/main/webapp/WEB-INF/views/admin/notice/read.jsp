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

	<div class="container" style="height: 750px;">
		<div class="rows">

			<div class="col-md-4"></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label class="fa fa-list" style="font-size: 20px;">&nbsp;&nbsp;<strong>공지사항 상세</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		
		<form method="post" style="width: 100%; text-align: webkit-center;"> 
			<div style="padding-top: 30px;"> 
			 
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="registered_id">작성자</label>
					</div>
					<div class="col-md-7"> 
						<label for="registered_id">${board.registered_id }</label>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="title">제목</label>
					</div>
					<div class="col-md-7"> 
						<label for="title">${board.title }</label>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="contents">내용</label>
					</div>
					<div class="col-md-7"> 
						<label for="contents">${board.contents }</label>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">조회수</label>
					</div>
					<div class="col-md-7"> 
						<label for="cnt">${board.cnt }</label>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-top: 25px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>
					<div class="col-md-7"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/list'">목록</button>
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/update?id=${board.id}'">수정</button>
						<button type="button" class="btn btn-danger" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/notice/delete?id=${board.id}'">삭제</button>
					</div>
					<div class="col-md-2"></div>
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
	$(function() {

	});
</script>

</html>



