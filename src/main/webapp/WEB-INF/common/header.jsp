<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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

<script>

</script>

<body>
    <!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">CarWash</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>11``
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">공지사항</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">이용안내</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">예약하기</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">자유게시판</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" href="#loginModal" style="magrin-left: 50px;">Login</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" href="#joinModal">Join</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation -->
	
	<!-- Login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" style="text-align: left;"><strong>Welcome</strong>, Please login</h5>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div><br />
				<div class="form-group">
                    <div class="col-md-12">
                        <input type="text" class="form-control" id="loginId" placeholder="로그인ID"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="password" class="form-control" id="loginPw" placeholder="비밀번호"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <a href="#" id="forgotPw">비밀번호를 깜빡하셨어요?</a>
                    </div><br />
                    <div class="col-md-6">
                        <a class="btn btn-primary js-scroll-trigger" id="loginBtn">LOGIN</a>
                    </div>
                </div>
				<!-- <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div> -->
			</div>
		</div>
	</div>
	<!-- Login Modal -->
	
	<!-- Join Modal -->
	<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" style="text-align: left;"><strong>Welcome</strong>, Please join</h5>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div><br />
				
				<form class="form-horizontal">
					 <div class="form-group">
                        <div class="col-md-6 col-md-12">                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">이름&nbsp;<b style="color: red;">*</b></span></span>
                                <input type="text" class="form-control input-form" placeholder="이름을 입력해주세요" required/>
                            </div>                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">ID&nbsp;<b style="color: red;">*</b></span></span>
                                <input type="text" class="form-control input-form col-md-8" placeholder="ID를 입력해주세요" required/>
                                <button type="button" class="btn-default">중복확인</button>
                            </div>                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">비밀번호&nbsp;<b style="color: red;">*</b></span></span>
                                <input type="password" class="form-control input-form" placeholder="비밀번호를 입력해주세요" required/>
                            </div>                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">비밀번호확인&nbsp;<b style="color: red;">*</b></span></span>
                                <input type="password" class="form-control input-form" placeholder="비밀번호를 한번 더 확인해주세요" required/>
                            </div>                                            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">생년월일&nbsp;<b style="color: red;">*</b></span></span>
                                <select>
                                	<option value="1980">1980</option>
                                	<option value="1981">1981</option>
                                	<option value="1982">1982</option>
                                	<option value="1983">1983</option>
                                	<option value="1984">1984</option>
                                	<option value="1985">1985</option>
                                	<option value="1986">1986</option>
                                </select>년
                                <select>
                                	<option value="1">1</option>
                                	<option value="2">2</option>
                                	<option value="3">3</option>
                                	<option value="4">4</option>
                                	<option value="5">5</option>
                                	<option value="6">6</option>
                                	<option value="7">7</option>
                                	<option value="8">8</option>
                                	<option value="9">9</option>
                                </select>월
                                <select>
                                	<option value="1">1</option>
                                	<option value="2">2</option>
                                	<option value="3">3</option>
                                	<option value="4">4</option>
                                	<option value="5">5</option>
                                	<option value="6">6</option>
                                </select>일
                            </div>     
                            
	                        <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">주소&nbsp;<b style="color: red;">*</b></span></span>
                                <input type="text" class="form-control input-form col-md-2" />&nbsp;-&nbsp;
                                <input type="text" class="form-control input-form col-md-2" />
                                <button type="button" class="btn-default">우편번호</button><br />
                            </div>            
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels"></span></span>
                                <input type="text" class="form-control input-form" style="margin-right: 10px;"/>
                                <input type="text" class="form-control input-form" />
                            </div> 
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">휴대폰번호&nbsp;<b style="color: red;">*</b></span></span>
                                <input type="text" class="form-control input-form col-md-4" />&nbsp;-&nbsp;
                                <input type="text" class="form-control input-form col-md-4" maxlength="4" />&nbsp;-&nbsp;
                                <input type="text" class="form-control input-form col-md-4" maxlength="4" /><br />
                                <input type="checkbox" />SMS
                            </div>                                               
                            <div class="input-group">
                                <span class="input-group-addon"><span class="form-labels">이메일주소</span></span>
                                <input type="email" class="form-control input-form" placeholder="이메일주소를 입력해주세요" required/>
                            </div>                                               
                        </div>
                    </div>
	                <div class="form-group">
	                    <div class="col-md-6">
	                        <a class="btn btn-primary js-scroll-trigger" id="joinBtn">JOIN</a>
	                    </div>
	                </div>
                </form>
                 
			</div>
		</div>
	</div>
	<!-- Join Modal -->

</body>
</html>

