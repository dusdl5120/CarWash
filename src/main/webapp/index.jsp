<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<!-- Header -->
<jsp:include page="WEB-INF/common/header.jsp"></jsp:include>
<!-- Header -->
	
</head>

<body id="page-top">
	<!-- Menu -->
		<jsp:include page="WEB-INF/common/menu.jsp"></jsp:include>
	<!-- Menu -->


	<!-- Contents -->
	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<a class="btn btn-primary btn-xl js-scroll-trigger btn-first" href="#about" style="opacity: 0.5;">☞&nbsp; 손세차예약</a>
				</div>
			</div>
		</div>
	</header>


	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading text-white">세차에 대한 모든 것?!</h2>
					<hr class="light my-4" style="width: 50%;">
					<p class="text-faded mb-4">[공지] 가을맞이 카워시 홈페이지 오픈!!</p>
					<a class="btn btn-light btn-xl js-scroll-trigger" href="admin/notice/list">☞&nbsp; 공지사항</a>
				</div>
			</div>
		</div>
	</section>


	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">CARWASH의 서비스!</h2>
					<hr class="my-4" style="width: 90%;">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">이용안내</h3>
						<p class="text-muted mb-0">세차가능한 지역과 요금안내</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">손세차예약</h3>
						<p class="text-muted mb-0">실시간예약과 예약현황 정보</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">자유게시판</h3>
						<p class="text-muted mb-0">사용자 간의 다양한 정보공유</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box mt-5 mx-auto">
						<i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
						<h3 class="mb-3">고객센터</h3>
						<p class="text-muted mb-0">무엇이든지 물어보세요!</p>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="bg-dark text-white">
		<div class="container text-center">
			<h2 class="mb-4">회원들의 솔직한 세차리뷰 확인!</h2>
			<a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">☞&nbsp; 리뷰</a>
		</div>
	</section>


	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading">관리자에게 물어보세요!</h2>
					<hr class="my-4" style="width: 60%;">
					<p class="mb-5">카워시 사이트 방문하시고 좋은 정보 얻으셨나요?<br />
					손세차 예약이나 궁금한 사항 있으시면 전화 또는 이메일로 문의주세요!</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 ml-auto text-center">
					<i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
					<p>043-222-2222</p>
				</div>
				<div class="col-lg-4 mr-auto text-center">
					<i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
					<p>
						<a href="http://www.google.co.kr">carwash@gmail.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Contents -->

</body>

<footer>
	<!-- Footer -->
	<jsp:include page="WEB-INF/common/footer.jsp"></jsp:include>
	<!-- Footer -->
</footer>


</html>
