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
<link rel="stylesheet" href="<c:url value="/views/web/assets/css/show_product.css"/>">
<!--font-->

<!--icon-->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<main class="container">
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

						<c:forEach var="item" begin="1" end="30">
							<li>
								<div>
									<div class="product-top">
										<a href="product.html" class="product-thumb"> <img
											src="https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/6a412738-c878-43a3-af4d-a372c6291563/air-jordan-6-retro-shoes-4m3b9d.png"
											alt="sp1">
										</a>
										<!--buy now-->
										<a href="" class="buy-now"> Buy now </a>
									</div>
									<a href="" class="product-name">giay so</a>
									<div class="product-price">$2000</div>
								</div>
							</li>
						</c:forEach>

					</ul>
				</div>
				<script>
					function viewproduct() {
						viewView({
							linkimg : "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/47112d0a-dc23-4b74-876c-b638fecf0af2/air-jordan-1-retro-high-og-shoes-a7Zzxm.png",
							price_pr : "$2000",
							product_name : "name_in here"
						});
					}
				</script>
			</div>
		</div>
		</div>
		<div class="choose__page">
			<ul>
				<li><a href="">&lt;</a></li>
				<c:forEach var="item" begin="1" end="10">
					<li><li><a href="#">${item}</a></li>
				</c:forEach>				
				<li><a href="">&gt;</a></li>
			</ul>
		</div>
	</main>
</body>
<%@ include file="footer.jsp"%>
</html>
