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
	.reply-box{
		border:1px solid #C8CACC; 
		line-height: 30px; 
		vertical-align: middle; 
		font-size:13px; 
		font-weight: bold;
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
		
		<!-- 자유게시판 상세정보 -->
		<form method="post" id="form" style="width: 100%; text-align: webkit-center;"> 
			<div style="width:100%; padding-top: 30px;">
			 
				
				<div class="row" style="margin-bottom: -30px; "> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">조회수</label>
					</div>
					<div class="col-md-6" style="text-align: left;"> 
						<label class="input form-control" id="cnt">${board.cnt }</label>
					</div>
					<div class="col-md-2" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="cnt">등록일시</label>
					</div>
					<div class="col-md-3" style="text-align: left;"> 
						<label class="input form-control" id="registered_date"><fmt:formatDate value="${board.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" /></label>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="registered_id">작성자</label>
					</div>
					<div class="col-md-11" style="text-align: left;"> 
						<input type="text" class="input form-control" style="border: none;" id="registered_id" name="registered_id" value="${board.registered_id }" disabled>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="title">제목</label>
					</div>
					<div class="col-md-11" style="text-align: left;"> 
						<input type="text" class="input form-control" id="title" name="title" value="${board.title }" disabled>
					</div>
				</div>
				<br> <br>
				
				
				<div class="row" style="margin-bottom: -30px;"> 
					<div class="col-md-1" style="text-align: right; padding-top: 6px;"> 
						<label class="control-label" for="contents">내용</label>
					</div>
					<div class="col-md-11" style="text-align: left;"> 
						<textarea class="input form-control" id="contents" name="contents" rows="10" disabled>${board.contents }</textarea>
					</div>
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
					<div class="col-md-12" style="text-align: right;"> 
						<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/free/list'">목록</button>
						<c:if test="${admin}">
							<button type="button" class="btn btn-dark" style="float: right; margin-top: 50px; margin-left: 10px;" onclick="location.href='/carwash/admin/free/update?id=${board.id}'">수정</button>
							<button type="button" class="btn btn-danger" id="delete" style="float: right; margin-top: 50px;" onclick="location.href='/carwash/admin/free/delete?id=${board.id}'">삭제</button>
						</c:if>
					</div>
				</div><br>
				
			</div>
		</form>
		
		<!-- 댓글등록 -->
		<form name="replyInsertForm">
			<div class="row" style="border-top:1px solid #e8e8e8; background-color:#fafafa; margin-top:20px;"> 
				<div class="col-md-12"> 
			
					<input type="hidden" name="freeNo" value="${board.id}"/>
					
					<div style="text-align: left; padding-top: 6px;">
						<c:if test="${admin}">
							<input type="text" name="registered_id" value="${user.admin_id}" style="background-color:#fafafa; border: none; width: 171px; height: 36px; margin-top:20px; padding: 0 13px;" placeholder="작성자" readonly>
						</c:if>
						<c:if test="${!admin}">
							<label style="margin-top: 10px;">&nbsp; 회원만 댓글을 작성하실 수 있어요<img style="margin-bottom: 5px;" src="<c:url value='/resources/images/smile.png'/>"></label>
						</c:if>
					</div>
					
					<div style="margin-top: 10px;"> 
						<c:if test="${admin}">
							<textarea class="input form-control" name="short_reply" rows="3" placeholder="댓글내용을 작성하세요" id="short_reply"></textarea>
						</c:if>
						<c:if test="${!admin}">
							<textarea class="input form-control" name="short_reply" rows="3" onfocus="myFunction(this)" placeholder="댓글내용을 작성하세요"  id="short_reply"></textarea>
						</c:if>
					</div>
					
					<div style="margin-top: 20px; margin-bottom: 20px; text-align: right;">
						<c:if test="${admin}">
							<button type="button" class="btn btn-primary" name="replyInsert" style="background-color: #004080;">등록</button>
						</c:if>
						<c:if test="${!admin}">
							<a href="/carwash/admin/member/needLogin"><button type="button" class="btn btn-primary" name="replyInsert" style="background-color: #006595;">등록</button></a>
						</c:if>
					</div>
				</div>
			</div>
			<br> <br>
		</form>
					
		<!-- 댓글목록 전체카운트 -->		
		<div class="row">
		 
			<div class="col-md-2" style="text-align: left; padding-top: 6px; color: #006393; font-size:17px; font-weight: bold; ">
				댓글목록 (<span id="replyCnt"></span>)</div>
			<div class="col-md-10"></div>
			
		</div><br><br>
       
        <!-- 댓글목록 -->
		<div class="row" id="replyList" style="margin-top: -20px; font-size: 14px;"></div>
		
		<!-- 댓글목록 페이징 -->
		<div class="row" id="replyPaging" style="font-size: 14px; justify-content:center; margin-top: 50px;"></div>
	</div>

	<!-- Contents -->
	
	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>

	$(document).ready(function() {

		/* 댓글목록함수호출 */
		replyList(1);			/* 댓글목록함수를 1페이지로 무조건 호출하도록 */
		replyPaging(1);			/* 댓글목록페이지를 1페이지로 무조건 호출하도록 */

		/* 댓글을 등록하기 위해 자유게시판의 게시글번호 불러와서 변수 freeNo에 담기 */
		var freeNo = '${board.id}';

		/* 댓글등록버튼 클릭시 이벤트발생 */
		$('[name=replyInsert]').click(function() {

			/* name이 replyInsertForm인 내용을 가져와서 
			   insertData 변수에 담고 replyInsert함수를 호출 */
			var insertData = $('[name=replyInsertForm]').serialize();
			replyInsert(insertData);
		});
		
		/* 댓글삭제 버튼을 클릭 시 삭제여부 확인창 띄우기 */
		$('#delete').click(function() {
			var freeNo = '${board.id}';
			
			var str = document.getElementById('form');
			str.submit();

			if (confirm("정말 삭제하시겠습니까?") == true) { 	/* 확인 */
				document.form.submit();
			} else { 											/* 취소 */
				return false;
			}
		});
		
	});
	

	/* 댓글목록함수 */
	function replyList(nowPage) {		/* 현재페이지를 매개변수로 받기 */

		/* 댓글목록을 표시하기 위해 자유게시판의 게시글번호 불러와서 변수 freeNo에 담기 */
		var freeNo = '${board.id}';

		/* ajax로 데이터보내기 */
		$.ajax({
			url : '/carwash/reply/list', 	/* 데이터를 보낼 컨트롤러 경로 */
			type : 'get',					/* get방식으로 */
			data : {
				'freeNo' : freeNo,
				'page' : nowPage			/* nowPage를 자바단에 page(현재페이지)로 넘겨주기 */
			}, 								
			success : function(data) { 		/* 성공하면 아래 태그실행 */

				var a = ''; 				/* 데이타 변수선언 */
				var cnt = 0; 				/* 댓글수 초기값 선언 */

				console.log(data);			/* 페이지가 찍히는지 콘솔로 확인 */
				
				cnt = data['cnt'];			/* data에 담긴 댓글전체cnt의 값을 cnt변수에 저장 */
				
				/* for문 돌리기 : data의 list(댓글목록) 개수만큼 */
				for(var i = 0; i<data['list'].length; i++){		
					
					/* 댓글목록의 i를 value에 담아서 값들을 a에 저장 */
					var value = data['list'][i];	
					
					a += '<div class="col-md-12" style="margin-bottom: 10px;">'
					a += '<div class="row reply-box"><div class="col-md-1">'+ value["registered_id"]  + '</div>'
                       + '<div class="col-md-10 text-right">' + value["registered_date"] + '</div>'
                       
                       + '<div class="col-md-1 text-right">' 
                       + '<a onclick="replyUpdate('+value["reply_no"]+',\''+value["short_reply"]+'\');">'            /* \' 는 따옴표를 의미 */
                       + '<img src="<c:url value='/resources/images/edit.png'/>"></a>' 
                       
                       + '&nbsp;&nbsp; <a onclick="replyDelete('+value["reply_no"]+');">'
                       + '<img src="<c:url value='/resources/images/deleted.png'/>"></a> </div></div>';
                        
                    a += '<div class="row" style="border:1px solid #C8CACC; border-top:0px; line-height: 70px; vertical-align: middle;">'
                       + '<div class="col-md-12 short_reply'+value["reply_no"]+'" style="text-align:left; font-size:13px;">'+ value["short_reply"] + '</div></div>';
                    a += '</div>'   
					
				}

				$('#replyCnt').html(cnt);	/* 댓글수 표시하고 싶은 span태그에 id를 주고 그 아이디를 html에 cnt를 담아 화면에 뿌려주기 */
				$("#replyList").html(a);	/* 그리고 이것 또한 역시 id가 replyList를 html에 a에 담았던 데이터를 화면에 뿌려주기 */
			}
		});
	};

	/* 댓글등록함수 */
	function replyInsert(insertData) {

		/* ajax로 데이터 내보내기 */
		$.ajax({
			url : '/carwash/reply/insert', 		 	/* 데이터를 보낼 컨트롤러 경로 */
			type : 'get',
			data : insertData,					 	/* 변수에 담았던 insertData를 data에 담아서 */
			
			success : function(data) {
				
				replyList(1); 						/* 댓글목록을 맨처음 1페이지로 reload */
				$('[name=short_reply]').val(''); 	/* name이 short_reply인 것에 data 값 넣기 */
				replyPaging(1);						/* 댓글목록페이지를 1페이지로 reload */
			}
		});
	};

	//댓글수정 폼화면함수
	function replyUpdate(reply_no, short_reply) {

		var a = '';

	    a += '<div class="input-group">';
	    a += '<input type="text" class="input form-control" name="short_reply_'+reply_no+'" value="'+short_reply+'"/>';
	    a += '&nbsp;<span class="input-group-btn"><button class="btn btn-secondary" type="button" onclick="replyUpdatePrc('+reply_no+');">수정</button></span>';
	    a += '&nbsp;<span class="input-group-btn"><button class="btn btn-danger" type="button" onclick="location.reload();">취소</button></span>';
	    a += '</div>';

		$('.short_reply' + reply_no).html(a);

	}

	/* 댓글수정처리함수 */
	function replyUpdatePrc(reply_no) {
		
		var updateContent = $('[name=short_reply_' + reply_no + ']').val();

		$.ajax({
			url : '/carwash/reply/update',
			type : 'get',
			data : {
				'short_reply' : updateContent,
				'reply_no' : reply_no
			},
			success : function(data) {
				
				if (data == 1)
					replyList(reply_no);
				
				alert("댓글이 성공적으로 수정되었습니다.");
			}
		});
	}

	/* 댓글삭제함수 */
	function replyDelete(reply_no) {
		
		var freeNo = '${board.id}';
		
		$.ajax({
			url : '/carwash/reply/delete',
			type : 'get',
			data : {
				'freeNo' : freeNo,
				'reply_no' : reply_no
			}, 
			
			success : function(data) {
				
				replyList(1);
				replyPaging(1);
				alert("댓글이 성공적으로 삭제되었습니다.");
			}
		});
	}
	
	
	/* 댓글 페이징 */
	function replyPaging(nowPage) {			/* 현재페이지를 매개변수로 받아 */
		
		/* 댓글목록을 표시하기 위해 자유게시판의 게시글번호 불러와서 변수 freeNo에 담기 */
		var freeNo = '${board.id}';
		
		/* id가 short_reply인 값을 출력하여 변수 reply에 담고
		   ajax의 데이터에 게시판번호와 댓글내용을 보내준다 */
		var reply = $('#short_reply').val();	
		
		/* ajax로 데이터보내기 */
		$.ajax({
			url : '/carwash/reply/replyPageList', 	/* 댓글페이징경로 컨트롤러로 이동 */
			type : 'get',							
			data : {
				'freeNo' : freeNo,			/* 게시판번호 */
				'short_reply' : reply,		/* 댓글내용 */
				'page' : nowPage			/* 현재페이지 */
			}, 								
			success : function(data) { 		
				
				/* data(freeNo, reply, page)가 찍히는지 콘솔창에 찍어보기 */
				console.log(data);		
				
				/* data의 배열값을 찍어보기 : 
				   pageMaker의 criteria의 perPageNum의 값을 확인해보기 위한 작업 */
				console.log(data['pageMaker']['criteria']['perPageNum']);	
				
				var a = ''; 				/* 데이타 변수선언 */
				
				/* data에서 값을 가져와서 페이지별 변수값 설정 */
				var startPage = data['pageMaker']['startPage'];			/* 시작페이지 */
				var endPage = data['pageMaker']['endPage'];				/* 마지막페이지 */
				var prev = data['pageMaker']['prev'];					/* 이전페이지 */
				var next = data['pageMaker']['next'];					/* 다음페이지 */
				var page = data['pageMaker']['criteria']['page'];		/* 현재페이지 */
				a += '<ul class="pagination pagination-sm" style="justify-content: center;">';
				/* prev일 경우 */
				console.log(prev);
				if(prev)
					a += '<li class="page-item"><a class="page-link" onclick="replyPaging('+(startPage-1)+');">&laquo;</a></li>';
					
				
				/* 페이징번호(마지막페이지까지) for문 돌리기 */
				for(var i=startPage-1; i<endPage;i++){
					a += '<li class="page-item"><a class="page-link" onclick="replyPaging('+ (i+1)+');">'+(i+1)+'</a></li>';	/*  */
				}
				
				
				
				/* next일 경우 */
				if(next)
					a += '<li class="page-item"><a class="page-link" onclick="replyPaging('+(endPage+1)+');">&raquo;</a></li>'; 
				a+= '</ul>';
				$("#replyPaging").html(a);		/* a의 값들을 댓글목록페이지 화면에 뿌리기 */
				replyList(nowPage);				/* 그런다음 댓글목록을 현재페이지로 reload */
			}
		});

	};
	
	
	/* 회원만 등록가능, 비회원은 로그인페이지로 */
	function myFunction(x) {
		window.location.href = "/carwash/admin/member/needLogin"
	}

	
	
	
</script>

</html>



