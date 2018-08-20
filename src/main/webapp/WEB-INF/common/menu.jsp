<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
	<a class="navbar-brand js-scroll-trigger" href="/carwash">CARWASH</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse text-center" id="navbarResponsive" style="color: #fff;">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash">Home</a></li>
			<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/admin/notice/list">공지사항</a></li>
			<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">이용안내</a></li>
			<c:if test="${admin}">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/reserve/insert">예약하기</a></li>
			</c:if>
			<c:if test="${!admin}">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/reserve/insert" onfocus="myFunction(this)">예약하기</a></li>
			</c:if>
			<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/admin/free/list">자유게시판</a></li>
		</ul>
	</div>
	
	<div class="collapse navbar-collapse text-right" id="navbarResponsive" style="color: #fff;">
		<ul class="navbar-nav ml-auto">
			<c:if test="${admin}">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"><b>${ user.ceo_name}</b>&nbsp;님!</a></li>   
				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/carwash/admin/member/myPage">마이페이지</a></li>  
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="/carwash/admin/member/logout">로그아웃</a>
				</li>
			</c:if>
			<c:if test="${!admin }">
				<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" href="#loginModal" style="magrin-left: 50px;">로그인</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" href="#joinModal">회원가입</a></li>
			</c:if>
		</ul>
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
			
			<form method="post" action="/carwash/admin/member/login">
				<div class="form-group">
	                <div class="col-md-12">
	                    <input type="text" class="form-control" id="loginId" name="admin_id" placeholder="로그인ID"/>
	                </div>
	            </div>
	            <div class="form-group">
	                <div class="col-md-12">
	                    <input type="password" class="form-control" id="loginPw" name="admin_passwd" placeholder="비밀번호"/>
	                </div>
	            </div>
	            <div class="form-group">
	                <div class="col-md-6">
	                    <a href="#" id="forgotPw">비밀번호를 깜빡하셨어요?</a>
	                </div><br />
	                <div class="col-md-12" id="loginBtn">
	                    <button type="submit" class="btn btn-primary js-scroll-trigger">LOGIN</button>
	                </div>
	            </div>
	    	</form>
	    	
		</div>
	</div>
</div>
<!-- Login Modal -->



<!-- Join Modal -->
<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" style="text-align: left;"><strong>Welcome</strong>, Please choice</h5>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div><br />
            <div class="form-group">
               <div class="col-md-12" style="text-align: center;">
                   <button type="button" class="btn btn-dark" onclick="location.href='/carwash/user/member/join'">사용자</button>
                   <button type="button" class="btn btn-dark" onclick="location.href='/carwash/admin/member/join'" style="margin-left: 10%;">관리자</button>
               </div>
           </div>
		</div>
	</div>
</div>
<!-- Join Modal -->

<script>
/* 회원만 등록가능, 비회원은 로그인페이지로 */
function myFunction(x) {
	window.location.href = "/carwash/admin/member/needLogin"
}
</script>