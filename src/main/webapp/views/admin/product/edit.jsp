<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product" />
<c:url var="ProductURL" value="/admin-product" />

<html>
<head>
<title>Edit product</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
					</li>
					<li class="active">Edit product</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty messageResponse}">
							<div class="alert alert-${alert}">${messageResponse}</div>
						</c:if>
						<form id="formSubmit">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Type</label>
								<div class="col-sm-9">
									<select class="form-control" id="manufacturer"
										name="manufacturer">
										<option value="">Choose Shoe's Type</option>
										<option value="Nike">Nike</option>
										<option value="Adidas">Adidas</option>

										<c:if test="${not empty model.categoryCode}">
											<option value="">Chọn loại bài viết</option>
											<c:forEach var="item" items="${categories}">
												<option value="${item.code}"
													<c:if test="${item.code == model.categoryCode}">selected="selected"</c:if>>
													${item.name}</option>
											</c:forEach>
										</c:if>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Product
									Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="productName"
										name="productName" value="${model.title}" />
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Image</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="productImage"
										name="productImage" value="${model.thumbnail}" />
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Description</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="desciption"
										name="desciption" value="${model.shortDescription}" />
								</div>
							</div>
							<br /> <br /> <label
								class="col-sm-3 control-label no-padding-right">Made in</label>
							<div class="col-sm-9">
								<select class="form-control" id="madeIn" name="madeIn">
									<option value="">Choose a country</option>
									<option value="VietNam">Viet Nam</option>
									<option value="Japan">Japan</option>
									<option value="China">China</option>
									<option value="Indonesia">Indonesia</option>
									<option value="India">India</option>
									<option value="Korea">Korea</option>
								</select>
							</div>
							<br /> <br /> <label
								class="col-sm-3 control-label no-padding-right">Gender</label>
							<div class="col-sm-9">
								<select class="form-control" id="gender" name="gender">
									<option value="">Choose gender</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
							<br /> <br /> <label
								class="col-sm-3 control-label no-padding-right">Price</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="price" name="price"
									value="${model.price}" />
							</div>
							<br /> <br /> <label
								class="col-sm-3 control-label no-padding-right">Discount</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="discount" name="discount"
									value="${model.discount}" />
							</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-12">
						<c:if test="${not empty model.id}">
							<input type="button" class="btn btn-white btn-warning btn-bold"
								value="Edit product" id="btnAddOrUpdateNew" />
						</c:if>
						<c:if test="${empty model.id}">
							<input type="button" class="btn btn-white btn-warning btn-bold"
								value="Add New Product" id="btnAddOrUpdateNew" />
						</c:if>
					</div>
				</div>
				<input type="hidden" value="${model.id}" id="id" name="id" />
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>
	<script>
		var editor = '';
		$(document).ready(function() {
			editor = CKEDITOR.replace('content');
		});

		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			data["content"] = editor.getData();
			var id = $('#id').val();
			if (id == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		});
		function addNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}?type=edit&id="
									+ result.id + "&message=insert_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
						}
					});
		}
		function updateNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'PUT',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}?type=edit&id="
									+ result.id + "&message=update_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
						}
					});
		}
		function KeyPadWrite(add) {
			if (add == "-1") {
				document.getElementById('ShortCode').value = document
						.getElementById('ShortCode').value.slice(0, -1);
			}
			// Max Length
			else if (document.getElementById('ShortCode').value.length < 6) {
				document.getElementById('ShortCode').value = document
						.getElementById('ShortCode').value
						+ add;
			}
		}
	</script>
</body>
</html>
