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
									<p style="font-size: 20px">Product Name:
										${model2.productName}</p>
									<p style="font-size: 20px">Amount: ${itemAmount}</p>
									<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Add new size'
												href='<c:url value="/admin-stock?type=insert&productId=${model.productId}"/>'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
											</a>
											<button id="btnDelete" type="button"
												class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Delete product'>
												<span> <i class="fa fa-trash-o bigger-110 pink"></i>
												</span>
											</button>

										</div>
									</div>
								</div>
							</div>
									<table class="table">
										<thead>
											<tr>
												<th><input type="checkbox" id="checkAll"></th>
												<th>ID</th>
												<th>Size</th>
												<th>Amount</th>
												<th>Update amount</th>
												<th>Update<th>
											</tr>
										</thead>
										<tbody>
										
										<c:forEach var="item" items="${list}">
											<tr>
												<td><input type="checkbox"
													id="checkbox_${item.productId}" value="${item.productId}"></td>
												<td>${item.productId}</td>
												<td>${item.size}</td>
												<td>${item.qty}</td>
												<td>
													<input name="amount" id="amount" placeholder="input value to update" style="width:50%;"></input>
												</td>
												<td><c:url var="editAmountURL" value="/admin-stock">
														<c:param name="type" value="edit" />
														<c:param name="productId" value="${item.productId}" />
														<c:param name="productsId" value="${model.productId}"/>
													</c:url> <a class="btn btn-sm btn-primary btn-edit"
													data-toggle="tooltip" title="Edit product"
													href='${editAmountURL}'><i class="fa fa-pencil-square-o"
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