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

	<div class="container" style="height: 850px;">
		<div class="rows">

			<div class="col-md-4 "></div>
			<div class="col-md-4" style="text-align: center; color: #6c757d;">
				<label style="font-size: 20px;">&nbsp;&nbsp;<strong>상세정보</strong></label>
			</div>
			<div class="col-md-4"></div>

			<br><br>

		</div>
		
		
		<form method="post" style="width: 100%; text-align: webkit-center;"> 
			<div style="width:100%; padding-top: 30px;">
			 
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">조회수</label>
					</div>
					<div class="col-md-1" style="text-align: left;"> 
						<label class="input form-control" id="cnt">${board.cnt }</label>
					</div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">등록일시</label>
					</div>
					<div class="col-md-4" style="text-align: left;"> 
						<label class="input form-control" id="registered_date"><fmt:formatDate value="${board.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" /></label>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="registered_id">작성자<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7" style="text-align: left;"> 
						<input type="text" class="input form-control" id="registered_id" name="registered_id" value="${board.registered_id }" disabled>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="title">제목<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7" style="text-align: left;"> 
						<input type="text" class="input form-control" id="title" name="title" value="${board.title }" disabled>
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="contents">내용<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7" style="text-align: left;"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10" disabled>${board.contents }</textarea>
					</div>
					<div class="col-md-2"></div>
				</div>
				
				<!-- <div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="file_name">첨부파일<b style="color: red;">&nbsp;*</b></label>
					</div>
					<div class="col-md-7" style="text-align: left;"> 
						<input class="input form-control" id="file_name" name="file_name" disabled /> 
					</div>
					<div class="col-md-2"></div>
				</div>
				<br> <br> -->
				
				
				<div class="row" style="margin-top: 25px;"> 
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>
					<div class="col-md-7"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/free/list'">목록</button>
						<c:if test="${admin}">
							<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/free/update?id=${board.id}'">수정</button>
							<button type="button" class="btn btn-danger" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/free/delete?id=${board.id}'">삭제</button>
						</c:if>
					</div>
					<div class="col-md-2"></div>
				</div><br>
				
			</div>
		</form>
		
		<hr class="hr-2" style="margin-bottom: 30px; width: 66%;">
		
		<form method="post">
			<div class="row" style="margin-bottom: -30px;"> 
				<div class="col-md-1"></div>
				<div class="col-md-2" style="text-align: right; padding-top: 6px;">
					<label class="control-label" for="short_comment">댓글등록</label>
				</div>
				<div class="col-md-5"> 
					<textarea class="input form-control" id="short_comment" name="short_comment" rows="3"></textarea>
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-secondary" id="reply" style="width:100%; height: 85px;">등록</button>
				</div>
			</div>
			<br> <br>
		</form>
						
		<div class="row" style="margin-bottom: -30px;"> 
	        <c:forEach var="reply" items="${reply}">
                <fmt:formatDate value="${reply.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" />
                <br>
                ${reply.contents}
	        </c:forEach>
       </div>
       
	</div>

	<!-- Contents -->

	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script type="text/javascript">
$(document).ready(function() {
	$("#reply").on("click",function(){
		var id = $("#short_comment").val();//id가 id인 input 태그에 입력된 id 가져오기
		$.ajax({
			async:true,
			type:'POST',
			data:id,
			url:"carwash/admin/free/reply",
			dataType:"json",
			contentType:"application/json; charset=UTF-8",
			success : function(data){
					alert("댓글이 등록되었습니다.");
			}
		});
	});
});


</script>

</html>



