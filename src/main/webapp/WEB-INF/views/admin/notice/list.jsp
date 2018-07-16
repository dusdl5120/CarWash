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
		<div class="container" style="height: 750px;">
			<div class="rows">
				<div style="width: 100%;">
					<div class="col-md-4 "></div>
					<div class="col-md-4" style="text-align: center; color: #6c757d;">
						<label class="fa fa-list" style="font-size: 20px;">&nbsp;&nbsp;<strong>공지사항</strong></label>
					</div>
					<div class="col-md-4"></div>
				</div>
				<br><br>

				<!-- <hr class="hr-2"> -->
				
				<div style="width: 100%;"><br>
					<table id="dataTable" class="table" style="text-align: center;">
						<thead>
							<tr>
								<th style="width: 10%;">순번</th>
								<th style="width: 50%;">제목</th>
								<th style="width: 10%;">작성자</th>
								<th style="width: 20%;">조회수</th>
								<th style="width: 20%;">작성일시</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}" varStatus="status">
								<tr>
									<td>${list.id }</td>
									<td><a href="/carwash/admin/notice/read?id=${list.id }">${list.title }</a></td>
									<td>${list.registered_id }</td>
									<td>${list.cnt }</td>
									<td><fmt:formatDate value="${list.registered_date}" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div style="width: 100%; margin-top: 2%;"> 
					<div class="row" >
						<div class="col-md-3">
							<form role="form" style="float: left; font-size: 17px;"> 
								<span style="display: inline-block;"><i class="fa fa-search"></i><input type="text" name="search" size="12" placeholder="search.."/></span> 
	                        </form>
						</div>
						
						<div class="col-md-6">
							<div style="width: 100%;">
								<ul class="pagination pagination-sm" style="justify-content: center;">
									<c:if test="${pageMaker.prev}">
										<li class="page-item"><a class="page-link" href="/carwash/admin/notice/list?page=${pageMaker.startPage - 1 }">&laquo;</a></li>
									</c:if>
									<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="page">
										<li class="page-item"><a class="page-link" href="/carwash/admin/notice/list?page=${page }">${page }</a></li>
									</c:forEach>
									<c:if test="${pageMaker.next}">
										<li class="page-item"><a class="page-link" href="/carwash/admin/notice/list?page=${pageMaker.endPage + 1 }">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
						</div>
							
						<div class="col-md-3">
							<button type="button" class="btn btn-dark" style="float: right;" onclick="location.href='/carwash/admin/notice/insert'">등록</button>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	<!-- Contents -->

<!-- Footer -->
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
<!-- Footer -->

	<script type="text/javascript" class="init">
		$(document).ready(function() {

			/* $('#dataTable').DataTable({
				 "language": {
				 "lengthMenu": "한 페이지당 게시글 수 : _MENU_",
				 "zeroRecords": "검색결과가 없습니다.",
				 "info": "현재페이지 _PAGE_ / 전체페이지 _PAGES_",
				 "Search" : "검색" 
				 }
			 });  */

			/* DataTable 행 선택 */
			/* $('#dataTable tbody').on('click', 'tr', function() {
				$(this).toggleClass('selected');
			}); */

			/* checkbox 전체선택/해제 */
			$("#allCheck").click(function() {
				if ($("#allCheck").prop("checked")) {
					$("input[name=chkYn]").prop("checked", true);
				} else {
					$("input[name=chkYn]").prop("checked", false);
				}
			});

		});
	</script>
</body>
</html>