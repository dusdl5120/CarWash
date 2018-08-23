<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

<!-- Header -->
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- Header -->
	
</head>

<body id="page-top">
<!-- Menu -->
	<jsp:include page="../common/menu.jsp"></jsp:include>
<!-- Menu -->

	<!-- Contents -->
	<header class="text-center text-white main-image">
		<div class="container text-center" style="margin-top: 70px;">
		
		</div>
	</header>
	

	<section> 
		<div class="row">
			<div class="col-md-12 text-center section-margin">
				<h4 class="h4Size">CARWASH의 서비스!</h4><br><br><br>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">	
				<div class="row">	
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row text-center">
							<div class="col-md-3 bg-inform pointer"><a href="#">이용안내</a></div>
							<c:if test="${admin}">
								<div class="col-md-3 bg-calendar pointer" onclick="myFunction(0)"><a href="#">예약하기</a></div>
							</c:if>
							<c:if test="${!admin}">
								<div class="col-md-3 bg-calendar pointer" onclick="myFunction(1)"><a href="#">예약하기</a></div>
							</c:if>
							<div class="col-md-3 bg-review pointer"><a href="#">사용자리뷰</a></div>
							<div class="col-md-3 bg-faq pointer"><a href="#">자주하는질문</a></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>	
		</div>
	</section>


	<section id="bg-gray"> 
		<div class="row">
			<div class="col-md-12 text-center section-margin margin-bt15">
				<h4 class="h4Size">공지사항</h4><br><br><br>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">	
				<div class="row">	
					<div class="offset-md-4 col-md-4">
						<div class="text-right">
							<a class="label-bold" href="/carwash/admin/notice/list">[more..]</a>
						</div>
					</div>
				</div>
			</div>	
		</div>
		
		<div class="row">
			<div class="col-md-12">	
				<div class="row">	
					<div class="offset-md-4 col-md-4">
						<div class="row text-center">
							<jsp:include page="../views/admin/notice/list2.jsp"  />
						</div>
					</div>
				</div>
			</div>	
		</div>
	</section>
	
	
	<section> 
		<div class="row">
			<div class="col-md-12 text-center section-margin">
				<h4 class="h4Size">관리자에게 물어보세요!</h4><br><br>
				<h5 class="lead">세차예약 또는 궁금한 사항 있으시면 문의주세요!<br><br></h5>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">	
				<div class="row">	
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="row text-center">
							<div class="col-md-5"></div>
							<div class="col-md-1 icon-phone"></div>
							<div class="col-md-1 icon-envelope"></div>
							<div class="col-md-5"></div>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</div>	
	</section>
	
	<a href="#" id="go_top"><img src="<c:url value='/resources/images/up.png'/>" border="0"/></a>
	
	<!-- Contents -->

</body>

<!-- Footer --> 
<jsp:include page="../common/footer.jsp"></jsp:include>
<!-- Footer -->


<script>
	$(document).ready(function(){
		
		/* 이용안내 클릭 시 페이지이동 */
		$('.bg-inform').click(function(){
			location.href = "/carwash/inform/insert"
		});	
		
		/* 리뷰 클릭 시 페이지이동 */
		$('.bg-review').click(function(){
			location.href = "/carwash/review/list"
		});	
		
		/* 자주하는질문 클릭 시 페이지이동 */
		$('.bg-faq').click(function(){
			location.href = "/carwash/faq/list"
		});	
	});
	
	/* 회원만 등록가능, 비회원은 로그인페이지로 */
	function myFunction(x) {
		if(x == 1)
			window.location.href = "/carwash/admin/member/needLogin";
		else
			window.location.href = "/carwash/user/reserve/insert";
	}
</script>

</html>
