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

	<div class="row" style="margin-bottom: -30px;"> 
	    <c:forEach var="list" items="${list}">
           <fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd HH:mm:ss" />
           <br>
           ${reply.contents}
	    </c:forEach>
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



