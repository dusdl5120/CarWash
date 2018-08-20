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
			<table class="table text-left ">
				<tbody>
					<c:forEach var="list" items="${list}">
						<tr>
							<td style="width:82%" class="ellipsis border-none"><a href="/carwash/admin/notice/read?id=${list.id }">[공지]&nbsp; ${list.title }</a></td>
							<td class="border-none"><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
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