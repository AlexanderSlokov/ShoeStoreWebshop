<%@ include file="header.jsp"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Shop Shoe</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value="/views/web/assets/css/show_product.css"/>">
<!--font-->

<!--icon-->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--paging-->
 	<script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
	<link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />
    
    
    
</head>
<body>
	<main class="container">
	<form action="<c:url value='/product'/>" id="formSubmit" method="get">
		<div class="container__main">
			<div class="product_view">
				<div class="show-top">
					<div class="text-right">show 1-20 product from 100 result</div>
					<div class="tab-select text-right">
						<ul>
							<li class="tab-item" onclick="viewproduct()">Trend</li>
							<li class="tab-item" onclick="">New</li>
							<li class="tab-item" onclick="">Hot-sell</li>

						</ul>
					</div>
				</div>
				
				<div class="show_product">
					<ul id="shooo" class="product">
						<h1 id="output"></h1>
						<script src="functem.js"></script>
						<c:forEach var="item" items="${model.list}">
							<li>
								<div>
									<div class="product-top">
										<a href="product.html" class="product-thumb"> <img
											src="<c:url value="${item.productImage}"/>"
											alt="sp1">
										</a>
										<!--buy now-->
										<a href="" class="buy-now"> Buy now </a>
									</div>
									<a href="" class="product-name">${item.productName}</a>
									<div class="product-price">${item.price}</div>
								</div>
							</li>
						</c:forEach>
					</ul>				
				</div>			
				<ul class="pagination" id="pagination"></ul>
				<input type="hidden" value="" id="page" name="page" /> <input
					type="hidden" value="" id="maxPageItem" name="maxPageItem" /> <input
					type="hidden" value="" id="sortName" name="sortName" /> <input
					type="hidden" value="" id="sortBy" name="sortBy" /> <input
					type="hidden" value="" id="type" name="type" />
					<input type="hidden" value="" id="manufacturer" name="manufacturer" />							
			</div>
		</div>
		</form>
	</main>
	
<script>
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			var limit = 6;		
			$(function() {
				window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 6,
				startPage : currentPage,
			    onPageClick : function(event, page) {
				if (currentPage != page) {
					$('#maxPageItem').val(limit);
					$('#page').val(page);
					$('#sortName').val('price');
					$('#sortBy').val('desc');
					$('#type').val('show');
					$('#manufacturer').val('Nike');
					$('#formSubmit').submit();
				}
			}
		});
	});
			function viewproduct() {
				viewView({
					linkimg : "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/47112d0a-dc23-4b74-876c-b638fecf0af2/air-jordan-1-retro-high-og-shoes-a7Zzxm.png",
					price_pr : "$2000",
					product_name : "name_in here"
				});
			}
</script>
</body>
<%@ include file="footer.jsp"%>
</html>