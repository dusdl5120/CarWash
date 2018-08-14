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
	
	<div style="width: 100%;"><br>
		<div class="row" style="margin-bottom: -30px;">
			<c:forEach var="list" items="${list}">
				<div class="col-md-12" style="margin-bottom: 10px;">
					<div class="row reply-box">
						<div class="col-md-1"></div>
						<div class="col-md-10 text-right"></div>
		
						<div class="col-md-1 text-right">
							<a onclick="replyUpdate();"> <img src="<c:url value='/resources/images/edit.png'/>"></a>
							&nbsp;&nbsp; <a onclick="replyDelete();"> <img src="<c:url value='/resources/images/deleted.png'/>"></a>
						</div>
					</div>
		
					<div class="row" style="border: 1px solid #C8CACC; border-top: 0px; line-height: 70px; vertical-align: middle;">
						<div class="col-md-12" style="text-align: left; font-size: 13px;"></div>
					</div>
				</div>
			</c:forEach>
		</div>
	
		<table class="table" style="text-align: center;">
			<tbody>
				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.id }</td>
						<td><a href="/carwash/admin/free/read?id=${list.id }">${list.title }</a>
							<a href="/carwash/reply/popup" onClick="openPop();"><span class="badge badge-primary" style="margin-left: 5px;">${list.reply_cnt }</span></a></td> 
						<td>${list.registered_id }</td>
						<td>${list.cnt }</td>
						<!-- <td>첨부파일</td> -->
						<td><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	

	<!-- Contents -->

	<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
	<!-- Footer -->

</body>

<script>
/* function replyList() {
	$.ajax({
		url:'/carwash/reply/list',
		type:'get',
		data:
		
	}); 
}
*/

/* $("#dup").on("click",function(){
	var id = $("#admin_id").val();//id가 id인 input 태그에 입력된 id 가져오기
	$.ajax({
		async:true,
		type:'POST',
		data:id,
		url:"carwash/admin/member/dup",
		dataType:"json",
		contentType:"application/json; charset=UTF-8",
		success : function(data){
			if(data.cnt > 0){
				alert("동일한 아이디가 존재합니다. 다시 입력해주세요.");
			}else{
				alert("사용가능한 아이디입니다.");
			}
		}
	});
});
 */










</script>

</html>



