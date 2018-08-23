<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
	

<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->
</head>

<body>
	
	<!-- Menu -->
		<jsp:include page="../../../common/menu.jsp"></jsp:include>
	<!-- Menu -->
	
	<!-- Contents -->

	<div class="container">
		<div class="rows container-rows">

			<div class="col-md-4"></div>
			<div class="col-md-4 text-center text-title">
				<label>&nbsp;&nbsp;<strong>공지사항</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		<!-- 공지사항 상세정보 -->
		<form id="form" class="form"> 
			<div class="row reserv-form-div"> 
				<div class="col-md-12"> 
					
					<div class="text-left reserv-label">
						<label>&nbsp; 상세정보 <img src="<c:url value='/resources/images/detail.png'/>"></label>
					</div>
					
					<div class="row detail-margin"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="cnt">조회수</label>
						</div>
						<div class="col-md-5 text-left"> 
							<input type="text" class="input form-control input-read" id="cnt" name="cnt" value="${board.cnt }" readonly>
						</div>
						<div class="col-md-2 text-right col-top">
							<label class="control-label" for="registered_date">작성일시</label>
						</div>
						<div class="col-md-2 text-left"> 
							<label class="input form-control input-read" id="registered_date"><fmt:formatDate value="${board.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" /></label>
						</div>
					</div><br>
					
					
					<div class="row ">  
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="admin_id">작성자</label>
						</div>
						<div class="col-md-9 text-left"> 
							<input type="text" class="input form-control input-read" id="admin_id" name="admin_id" value="${board.admin_id }" readonly>
						</div> 
					</div><br>
					
					
					<div class="row "> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="title">제목</label>
						</div>
						<div class="col-md-9 text-left"> 
							<input type="text" class="input form-control" id="title" name="title" value="${board.title }" readonly>
						</div>
					</div><br>
 
					
					<div class="row"> 
						<div class="col-md-2 text-right col-top"> 
							<label class="control-label" for="contents">내용</label>
						</div>
						<div class="col-md-9 text-left"> 
							<textarea class="input form-control" id="contents" name="contents" rows="10" readonly>${board.contents }</textarea>
						</div>
					</div><br>
					
				</div>
			</div>
			<br> <br> 
			
			<div class="row footer-mb"> 
				<div class="col-md-12 text-right"> 
					<button type="button" class="btn btn-danger btn-cancel-reserve" id="delete" onclick="location.href='/carwash/admin/notice/delete?id=${board.id}'">삭제</button>
					<button type="button" class="btn btn-insert-join" onclick="location.href='/carwash/admin/notice/update?id=${board.id}'">수정</button>
					<button type="button" class="btn btn-dark btn-cancel-join" onclick="location.href='/carwash/admin/notice/list'">목록</button>
				</div>
			</div>
		</form>
		
	</div>




	<!-- Contents -->

	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>
	$(document).ready(function() {
	
		/* 공지사항 삭제 버튼을 클릭 시 삭제여부 확인창 띄우기 */
		$('#delete').click(function() {
			
			var noticeNo = '${board.id}';
			var str = ('#form');

			if (confirm("정말 삭제하시겠습니까?") == true) { 	
				
				location.href = '/carwash/admin/notice/delete?id=' + noticeNo;
				str.submit();
				//alert("게시글이 성공적으로 삭제되었습니다.");
				
			} else { 											
				return false;
			}	
		});
		
		
		
		
		
		
	});
	
	
	
</script>

</html>



