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
	<header class="text-center text-white main-image" style="-webkit-logical-height: 830px;">
		<div class="container text-center" style="margin-top: 70px;">
		
			<!-- <h4>새차를 원하십니까?</h4><br><br>
			<h4 id="lead">세차는 어떻습니까!</h4><br><br><br>
			<button type="button" class="btn btn-light" onclick="location.href='admin/reserve/insert'">세차예약</button> -->
		</div>
	</header>

	<section id="notice"> 
		<div class="container text-center">
			<div class="row">
				<div class="col-md-8 mx-auto">
					<h4 class="h4Size">세차에 대한 모든 것!</h4><br><br><br>
					<button type="button" class="btn btn-primary" onclick="location.href='admin/notice/list'">공지사항</button>
				</div>
			</div>
		</div>
	</section>

	<section id="services" class="bg-secondary">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-8 mx-auto">
					<h4 class="h4Size">CARWASH의 서비스!</h4><br><br><br>
					<h5 class="lead">
						<a data-toggle="modal" href="#feeModal"><i class="fas fa-dollar-sign" style="font-size: 75px;"></i></a> 							<!-- 요금안내 -->
						<a data-toggle="modal" href="#reserveModal"><i class="fas fa-calendar-alt" style="font-size: 75px; margin-left: 10%;"></i></a>		<!-- 예약정보 -->
						<a data-toggle="modal" href="#infoModal"><i class="fas fa-info-circle" style="font-size: 75px; margin-left: 10%;"></i></a>			<!-- 정보공유 -->
						<a data-toggle="modal" href="#fnaModal"><i class="fas fa-question-circle" style="font-size: 75px; margin-left: 10%;"></i></a>		<!-- 문의하기 -->
					</h5>
				</div>
			</div>
		</div>
	</section>

	<section id="contact">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-8 mx-auto">
					<h4 class="h4Size">관리자에게 물어보세요!</h4><br><br>
					<h5 class="lead">세차예약 또는 궁금한 사항 있으시면 문의주세요!<br><br>
					<i class="fas fa-phone" style="font-size: 17px;"></i>&nbsp;&nbsp;고객센터 : 043-000-0000 <br>
					<i class="fas fa-envelope" style="font-size: 17px;"></i>&nbsp;&nbsp;이메일 : carwash@carwash.com</h5>
				</div>
			</div>
		</div>
	</section>
	<!-- Contents -->
	
	<!-- Fee Modal -->
	<div class="modal fade" id="feeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" style="text-align: left;"><strong>세차가 가능한 지역과 요금안내</strong></h5>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div><br />
	            <div class="form-group">
	               <div class="col-md-12" style="text-align: center;">
	                   <button type="button" class="btn btn-dark" onclick="location.href='/carwash/feeInfo'">요금안내 바로가기</button>
	               </div>
	           </div>
			</div>
		</div>
	</div>
	<!-- Fee Modal -->
	
	<!-- Reserve Modal -->
	<div class="modal fade" id="reserveModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" style="text-align: left;"><strong>실시간예약과 예약현황 정보</strong></h5>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div><br />
	            <div class="form-group">
	               <div class="col-md-12" style="text-align: center;">
	                   <button type="button" class="btn btn-dark" onclick="location.href='/carwash/feeInfo'">손세차예약 바로가기</button>
	               </div>
	           </div>
			</div>
		</div>
	</div>
	<!-- Reserve Modal -->
	
	<!-- Info Modal -->
	<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" style="text-align: left;"><strong>사용자 간의 다양한 정보공유</strong></h5>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div><br />
	            <div class="form-group">
	               <div class="col-md-12" style="text-align: center;">
	                   <button type="button" class="btn btn-dark" onclick="location.href='/carwash/feeInfo'">자유게시판 바로가기</button>
	               </div>
	           </div>
			</div>
		</div>
	</div>
	<!-- Info Modal -->
	
	<!-- F&A Modal -->
	<div class="modal fade" id="fnaModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" style="text-align: left;"><strong>무엇이든지 물어보세요!</strong></h5>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div><br />
	            <div class="form-group">
	               <div class="col-md-12" style="text-align: center;">
	                   <button type="button" class="btn btn-dark" onclick="location.href='/carwash/feeInfo'">고객센터</button>
	               </div>
	           </div>
			</div>
		</div>
	</div>
	<!-- F&A Modal -->
</body>

<!-- Footer --> 
<jsp:include page="WEB-INF/common/footer.jsp"></jsp:include>
<!-- Footer -->


</html>
