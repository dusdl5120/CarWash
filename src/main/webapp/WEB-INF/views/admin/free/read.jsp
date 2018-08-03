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
						
		<div class="row" style="margin-top: 30px;">
		 
			<div class="col-md-1"></div>
			<div class="col-md-2" style="text-align: right; padding-top: 6px; color: orange; font-weight: bold;">목록</div>
			<div class="col-md-7"></div>
			<div class="col-md-2"></div>
			
       </div><br><br>
       
		<div class="row" id="replyList">
		 
			<div class="col-md-1"></div>
			<div class="col-md-2" style="text-align: right; padding-top: 6px;"></div>
			<div class="col-md-7"> 
				
				<%-- <c:forEach var="list" items="${list}">
			    	${list.registered_id} &nbsp;&nbsp;${list.contents} &nbsp;&nbsp;
		            <fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" /><br>
			    </c:forEach> --%>
			</div>
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
	
	/* 자유게시판 게시글 일련번호 */
	
	replyList();	
});

function replyList(){
	
	var freeNo = '${board.id}'; //게시글 번호

	/* 댓글목록 */
	 $.ajax({
       url : '/carwash/reply/list',
       type : 'get',
       data : {'freeNo':freeNo},
       success : function(data){
           var a =''; 
           $.each(data, function(key, value){ 
               /* a += '<div class="replyArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
               a += '<div class="replyInfo'+value.reply_no+'">'+' 작성자 : '+value.registered_id;
               a += '<a onclick="replyUpdate('+value.reply_no+',\''+value.contents+'\');"> 수정 </a>';
               a += '<a onclick="replyDelete('+value.reply_no+');"> 삭제 </a> </div>';
               a += '<div class="replyContent'+value.reply_no+'"> <p> 내용 : '+value.contents +'</p>';
               a += '</div></div>'; */
               
                a += '<div class="col-md-1"></div>'
                a += '<div class="col-md-2" style="text-align: right;">' + value.registered_id + '</div>'
                a += '<div class="col-md-5" style="text-align: left;">'+ value.contents +'</div>'
                a += '<div class="col-md-2" style="text-align: center;">'+ '수정' + '&nbsp;삭제</div>'
                a += '<div class="col-md-2"></div>'
				
				
				
				
				
		    
           });
           
           /* 
           
	          
					
				
				 */
	
				$("#replyList").html(a);
			}
		});
	};
</script>

</html>



