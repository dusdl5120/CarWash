<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
	<!-- Header -->
		<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->
<head>
<title>공지사항 등록</title>

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
					<h4 class="modal-titles fa fa-list">&nbsp;&nbsp;<strong>공지사항 등록</strong>
					</h4>
				</div>
				<div class="col-md-4"></div>

				<br><br>

				<hr class="hr-2">
			</div>

			<form method="post">
				<div>
	                <div class="form-group">
	                    <label class="col-md-4 control-label">작성자</label>
	                    <div class="col-md-8">                                            
	                        <div class="input-group">
	                            <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
	                            <input type="text" class="form-control" name="registered_id"/>
	                        </div>                                            
	                    </div>
	                </div>
	                
	                <div class="form-group">
	                    <label class="col-md-4 control-label">제목</label>
	                    <div class="col-md-8">                                            
	                        <div class="input-group">
	                            <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
	                            <input type="text" class="form-control" name="title"/>
	                        </div>                                            
	                    </div>
	                </div>
	                
	                <div class="form-group">
	                    <label class="col-md-4 control-label">내용</label>
	                    <div class="col-md-8">                                            
	                        <div class="input-group">
	                            <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
	                            <textarea class="form-control" name="contents"></textarea>
	                        </div>                                            
	                    </div>
	                </div>
	            </div>
	            
	            <button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/list'">취소</button>
				<button type="submit" class="btn btn-dark" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/notice/insert'">등록</button>
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



