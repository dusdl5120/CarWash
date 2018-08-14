<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
	

<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->
</head>

<style>
	label.input{
		border: none;	
	}
	.container{
		min-height:850px;
		
	}
	.container::-webkit-scrollbar { 
	    display: none; 
	}
</style>

<body>
	
	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->

	<div class="container">
		<div class="rows">

			<div class="col-md-4"></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label style="font-size: 15px;">&nbsp;&nbsp;<strong>상세정보</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		<!-- 공지사항 상세정보 -->
		<form method="post" style="width: 100%; text-align: webkit-center;"> 
			<div style="width:100%; padding-top: 30px;">
			 
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">조회수</label>
					</div>
					<div class="col-md-6" style="text-align: left;"> 
						<label class="input form-control" id="cnt">${board.cnt }</label>
					</div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">등록일시</label>
					</div>
					<div class="col-md-3" style="text-align: left;"> 
						<label class="input form-control" id="registered_date"><fmt:formatDate value="${board.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" /></label>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="admin_id">작성자</label>
					</div>
					<div class="col-md-11" style="text-align: left;"> 
						<input type="text" class="input form-control" style="border: none;" id="admin_id" name="admin_id" value="${adNoticeVO.admin_name }" disabled>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="title">제목</label>
					</div>
					<div class="col-md-11" style="text-align: left;"> 
						<input type="text" class="input form-control" id="title" name="title" value="${board.title }" disabled>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="contents">내용</label>
					</div>
					<div class="col-md-11" style="text-align: left;"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10" disabled>${board.contents }</textarea>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row"> 
					<div class="col-md-12"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/list'">목록</button>
						<c:if test="${admin}">
							<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/update?id=${board.id}'">수정</button>
							<button type="button" class="btn btn-danger" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/notice/delete?id=${board.id}'">삭제</button>
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



