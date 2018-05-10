<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>CARWASH MAIN</title>

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Bootstrap core JavaScript -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="resources/vendor/scrollreveal/scrollreveal.min.js"></script>
<script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Custom scripts for this template -->
<script src="resources/js/creative.min.js"></script>

<!-- Plugin CSS -->
<link href="resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/creative.min.css" rel="stylesheet">

</head>

<body id="page-top">
	<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
	<!-- Header -->
	
	<!-- Contents -->
	<div class="page-content-wrap">
	
		<div class="row">
			<div class="col-md-12">
				<form class="form-horizontal">
					<div class="panel panel-default">
						<div class="panel-body" style="margin-top: 140px;">
							<p>
								회원가입 (<b style="color: red;">*</b>표시는 필수 입력항목입니다.)
							</p>
						</div>
						<div class="panel-body form-group-separated">
	
							<div class="form-group">
			                   <div class="col-md-12">
			                   		<label class="col-md-3 col-xs-12 control-label">아이디</label>
			                       <input type="text" class="form-control" id="joinId" placeholder="ID를 입력하세요"/>
			                   </div>
			               </div>
			               <div class="form-group">
			                   <div class="col-md-12">
			                       <input type="password" class="form-control" id="loginPw" placeholder="비밀번호"/>
			                   </div>
			               </div>
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Text
									Field</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-pencil"></span></span> <input type="text"
											class="form-control" />
									</div>
									<span class="help-block">This is sample of text field</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Password</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-unlock-alt"></span></span> <input type="password"
											class="form-control" />
									</div>
									<span class="help-block">Password field sample</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Datepicker</label>
								<div class="col-md-6 col-xs-12">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="fa fa-calendar"></span></span> <input type="text"
											class="form-control datepicker" value="2014-11-01">
									</div>
									<span class="help-block">Click on input field to get
										datepicker</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Textarea</label>
								<div class="col-md-6 col-xs-12">
									<textarea class="form-control" rows="5"></textarea>
									<span class="help-block">Default textarea field</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Tags</label>
								<div class="col-md-6 col-xs-12">
									<input type="text" class="tagsinput" value="First,Second,Third" />
									<span class="help-block">Default textarea field</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Select</label>
								<div class="col-md-6 col-xs-12">
									<select class="form-control select">
										<option>Option 1</option>
										<option>Option 2</option>
										<option>Option 3</option>
										<option>Option 4</option>
										<option>Option 5</option>
									</select> <span class="help-block">Select box example</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">File</label>
								<div class="col-md-6 col-xs-12">
									<input type="file" class="fileinput btn-primary" name="filename"
										id="filename" title="Browse file" /> <span class="help-block">Input
										type file</span>
								</div>
							</div>
	
							<div class="form-group">
								<label class="col-md-3 col-xs-12 control-label">Checkbox</label>
								<div class="col-md-6 col-xs-12">
									<label class="check"><input type="checkbox"
										class="icheckbox" checked="checked" /> Checkbox title</label> <span
										class="help-block">Checkbox sample, easy to use</span>
								</div>
							</div>
	
						</div>
						<div class="panel-footer">
							<button class="btn btn-default">Clear Form</button>
							<button class="btn btn-primary pull-right">Submit</button>
						</div>
					</div>
				</form>
	
			</div>
		</div>
	
	</div>
	
	<!-- Contents -->
	
	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>
</html>

