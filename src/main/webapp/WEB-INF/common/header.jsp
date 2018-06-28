<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" data-spy="affix" data-offset-top="300" id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="/carwash">CarWash</a>
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash">Home</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/admin/notice/list">공지사항</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">이용안내</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">예약하기</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">자유게시판</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" href="#loginModal" style="magrin-left: 50px;">Login</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/admin/member/join">Join</a></li>
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
		</div>
	</div>
</div>
<!-- Login Modal -->

