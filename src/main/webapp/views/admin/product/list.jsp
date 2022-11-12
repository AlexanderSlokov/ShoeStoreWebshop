<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of products</title>
</head>
<body>
	<div class="main-content">
	<form action="<c:url value='/admin-product'/>" id="formSubmit" method="get">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<div class="row">
									<table class="table">
										<thead>
											<tr>
												<th><input type="checkbox" id="checkAll"></th>
												<th>ID</th>
												<th>Product Name</th>
												<th>Price</th>
												<th>Description</th>
												<th>Manipulation</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${model.list}">
												<tr>
													<td><input type="checkbox" id="checkbox_${item.productId}"
														value="${item.productId}"></td>
													<td>${item.productId}</td>
													<td>${item.productName}</td>
													<td>${item.price}</td>
													<td>${item.desciption}</td>
													<td>
																<c:url var="editURL" value="/admin-product">
																	<c:param name="type" value="edit"/>
																	<c:param name="id" value="${item.productId}"/>
																</c:url>
																<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																   title="Edit products" href='${editURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																</a>
															</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<ul class="pagination" id="pagination"></ul>
									<input type="hidden" value="" id="page" name="page"/>
									<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
									<input type="hidden" value="" id="sortName" name="sortName"/>
									<input type="hidden" value="" id="sortBy" name="sortBy"/>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
	
	<!-- /.main-content -->
	<script>
	var totalPages = ${model.totalPage};
	var currentPage =${model.page};
	var limit = 6;
	$(function () {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages: totalPages,
			visiblePages: 6,
			startPage: currentPage,
			onPageClick: function (event, page) {
				if (currentPage != page) {
					$('#maxPageItem').val(limit);
					$('#page').val(page);
					$('#sortName').val('price');
					$('#sortBy').val('desc');
					
					$('#formSubmit').submit();
				}
			}
		});
	});
	</script>
</body>
</html>