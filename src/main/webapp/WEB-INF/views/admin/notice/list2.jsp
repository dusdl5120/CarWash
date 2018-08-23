<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

</head>

<body>
	<!-- Contents -->
		<div class="width-div"><br>
			<table class="table text-left">
				<tbody>
					<c:forEach var="list" items="${list}" varStatus="i">
						<tr>
							<td style="width:80%" class="ellipsis border-none"><a href="/carwash/admin/notice/read?id=${list.id }">
							<span class="label-bold">[공지]</span>&nbsp; ${list.title }</a>
							<c:if test="${regDate[i.index] }">
								<img src="<c:url value='/resources/images/new.png'/>">
							</c:if></td>
							<td class="border-none text-right"><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	<!-- Contents -->

<script>
	$(document).ready(function() {

	});
</script>
</body>
</html>