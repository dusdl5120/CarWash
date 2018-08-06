<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Header -->
	<jsp:include page="../../../common/header.jsp"></jsp:include>
<!-- Header -->
<style>
	label.input{
		border: none;	
	}
	.container{
		min-height:850px;
		
	}
	.container::-webkit-scrollbar { 
	    display: none; 
	}
</style>
</head>

<body>
	
<!-- Menu -->
	<jsp:include page="../../../common/menu.jsp"></jsp:include>
<!-- Menu -->

	<!-- Contents -->
	
	<div class="container" >
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
						<label class="control-label" for="registered_id">작성자</label>
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
						<label class="control-label" for="title">제목</label>
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
						<label class="control-label" for="contents">내용</label>
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
		
		<form name="replyInsertForm">
			<div class="row" style="margin-bottom: -30px;"> 
				<input type="hidden" name="freeNo" value="${board.id}"/>
				<div class="col-md-1"></div>
				<div class="col-md-2" style="text-align: right; padding-top: 6px;">
					<label class="control-label" for="reply">댓글등록</label>
				</div>
				<div class="col-md-6"> 
					<textarea class="input form-control" id="short_reply" name="short_reply" rows="3"></textarea>
				</div>
				<div class="col-md-1">
					<button type="button" class="btn btn-secondary" name="replyInsert" style="width:100%; height: 80px;">등록</button>
				</div>
			</div>
			<br> <br>
		</form>
						
		<div class="row">
		 
			<div class="col-md-1"></div>
			<div class="col-md-2" style="text-align: right; padding-top: 6px; color: orange; font-weight: bold; text-decoration: underline;">
				목록(<span id="replyCnt"></span>)</div>
			<div class="col-md-7"></div>
			<div class="col-md-2"></div>
			
       </div><br><br>
       
		<div class="row" id="replyList" style="margin-top: -20px;">
		 
			<div class="col-md-1"></div>
			<div class="col-md-2" style="text-align: right; padding-top: 6px;"></div>
			<div class="col-md-7"></div>
			<div class="col-md-2"></div>
			
       </div>
	</div>

	<!-- Contents -->
	
	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>

	$(document).ready(function() {

		replyList(); // 먼저 replyList() 호출

		var freeNo = '${board.id}'; //게시글 번호

		$('[name=replyInsert]').click(function() { 							// 댓글 등록 버튼 클릭시 
			
			var insertData = $('[name=replyInsertForm]').serialize(); 		// replyInsertForm의 내용을 가져옴
			replyInsert(insertData);										// Insert 함수호출(아래)
			
		});

	});

	function replyList() {

		var freeNo = '${board.id}'; //게시글 번호

		/* 댓글목록 */
		$.ajax({
			url : '/carwash/reply/list',
			type : 'get',
			data : { 'freeNo' : freeNo },
			success : function(data) {

				var a = '';
				var cnt = 0;

				$.each(data, function(key, value) {
	
						a += '<div class="col-md-1"></div>'
						a += '<div class="col-md-2" style="text-align: right;">'+ value.registered_id + ' <img src="<c:url value='/resources/images/smile.png'/>"></div>'
						a += '<div class="col-md-6" style="text-align: left;">'+ value.short_reply + '</div>'
						a += '<div class="col-md-1" style="text-align: right;">' + '<img src="<c:url value='/resources/images/edit.png'/>">' 
								+ '&nbsp;&nbsp; <img src="<c:url value='/resources/images/deleted.png'/>"> </div>'
						a += '<div class="col-md-2"></div>'
	
						cnt++;
	
					});

				$('#replyCnt').html(cnt);
				$("#replyList").html(a);
			}
		});
	};

	/* 댓글등록 */
	function replyInsert(insertData) {

		$.ajax({
			url : '/carwash/reply/insert',
			type : 'get',
			data : insertData,
			success : function(data) {
				if (data == 1) {
					replyList(); 						//댓글 작성 후 댓글 목록 reload
					$('[name=short_reply]').val('');
				}
			}
		});
	}
</script>

</html>



