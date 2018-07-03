<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>CARWASH MAIN</title>

<link rel="icon" href="favicon.ico" type="image/x-icon" />
<!-- Bootstrap core CSS -->
<link href="../../resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<!-- <link href="resources/css/theme-default.css" rel="stylesheet"> -->

<!-- Custom fonts for this template -->
<link
	href="../../resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap core JavaScript -->
<script src="../../resources/vendor/jquery/jquery.min.js"></script>
<script
	src="../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../../resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="../../resources/vendor/scrollreveal/scrollreveal.min.js"></script>
<script
	src="../../resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Custom scripts for this template -->
<script src="../../resources/js/creative.min.js"></script>

<!-- Plugin CSS -->
<link href="../../resources/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../resources/css/creative.min.css" rel="stylesheet">

</head>

<body>
	<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->

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

			<div >
                                    
                <div class="form-group">
                    <label class="col-md-4 control-label">작성자</label>
                    <div class="col-md-8">                                            
                        <div class="input-group">
                            <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                            <input type="text" class="form-control"/>
                        </div>                                            
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label">제목</label>
                    <div class="col-md-8">                                            
                        <div class="input-group">
                            <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                            <input type="text" class="form-control"/>
                        </div>                                            
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label">내용</label>
                    <div class="col-md-8">                                            
                        <div class="input-group">
                            <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                            <textarea class="form-control"></textarea>
                        </div>                                            
                    </div>
                </div>
                

            </div>



			<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/notice/list'">취소</button>
			<button type="submit" class="btn btn-dark" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/notice/insert'">등록</button>

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



