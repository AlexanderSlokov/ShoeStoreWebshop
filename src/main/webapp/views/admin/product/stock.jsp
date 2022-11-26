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
												<form action="<c:url value='/admin-stock'/>" id="formSubmit"
												method="get"	>
												<td>
													<input name="amount" id="amount" placeholder="input value to update" style="width:50%;"></input>
													<input name="productId" id="productId" value="${item.productId}" type="hidden"></input>
													<input name="productsId" id="productsId" value="${model.productId}" type="hidden"></input>
													<input name="type" id="type" value="edit" type="hidden"></input>
												</td>
												<td><button type="submit" class="btn btn-primary">Upload</button></td>
												</form>
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