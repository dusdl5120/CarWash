<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
	<!-- Header -->
		<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->

<head>
<title>공지사항 상세</title>
</head>

<body>
	
	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->

	<div class="container-fluid">
		<div class="container">
			<div class="row">

				<div class="col-md-4 "></div>
				<div class="col-md-4" style="text-align: center;">
					<h4 class="modal-titles fa fa-list">&nbsp;&nbsp;<strong>자유게시판 상세</strong>
					</h4>
				</div>
				<div class="col-md-4"></div>

				<br><br>

				<hr class="hr-2">
			</div>

			<form method="post">
				<div style="margin-right: 80px;">
					<input type="hidden" name="id" value="${board.id }" />
					<div class="form-group" style="display: inline-flex;">
						<label class="col-md-12 control-label">작성자 : </label>
						<label for="registered_id">${board.registered_id }</label>
					</div>
					<br>

					<div class="form-group" style="display: inline-flex;">
						<label class="col-md-12 control-label">제목 : </label> 
						<label for="title">${board.title }</label>
					</div>
					<br>

					<div class="form-group" style="display: inline-flex;">
						<label class="col-md-12 control-label">내용 : </label> 
						<label for="contents">${board.contents }</label>
					</div>
					<br>

					<div class="form-group" style="display: inline-flex;">
						<label class="col-md-12 control-label">조회수 : </label> 
						<label for="cnt">${board.cnt }</label>
					</div>
					<br>

					<div class="form-group" style="display: inline-flex;">
						<label class="col-md-12 control-label">파일첨부 : </label> 
						<label for="file_name">${board.file_name }</label>
					</div>
					<br>

					<div class="input-group">
						<span class="input-group-addon"></span>
						<input type="text" class="form-control" name="short_comment" />
						<button type="submit" class="btn btn-dark" onclick="location.href='/carwash/admin/free/comment'">댓글등록</button>
					</div>
				</div>

				<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/free/list'">목록</button>
				<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" 
				onclick="location.href='/carwash/admin/free/update?id=${board.id}'">수정</button>
				<button type="button" class="btn btn-danger" style="float: right; margin-top: 50px; margin-left: 10px;" 
				onclick="location.href='/carwash/admin/free/delete?id=${board.id}'">삭제</button>
            </form>



			

		</div>
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



