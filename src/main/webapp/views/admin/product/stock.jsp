<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stock</title>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-product'/>" id="formSubmit"
			method="get">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a></li>
					</ul>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<p style="font-size:20px">Product Name: ${model.productName}</p>
									<p style="font-size:20px">Amount: ${itemAmount}</p>
									<table class="table">
										<thead>
											<tr>
												<th><input type="checkbox" id="checkAll"></th>
												<th>ID</th>
												<th>Size</th>
												<th>Amount</th>
												<th>Update amount<th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${model.list}">
												<tr>
													<td><input type="checkbox"
														id="checkbox_${item.productId}" value="${item.productId}"></td>
													<td>${item.productId}</td>
													<td>${item.size}</td>
													<td>${item.amount}</td>
													<td><c:url var="editURL" value="/admin-product">
															<c:param name="type" value="import" />
															<c:param name="productId" value="${item.productId}" />
														</c:url> <a class="btn btn-sm btn-primary btn-edit"
														data-toggle="tooltip" title="Edit products"
														href='${editURL}'><i class="fa fa-pencil-square-o"
															aria-hidden="true"></i> </a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>