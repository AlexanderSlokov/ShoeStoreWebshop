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
	href="<c:url value="/views/web/assets/css/cart.css"/>">
<!--font-->

<!--icon-->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--paging-->
<script
	src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
<link rel="stylesheet"
	href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var sum_price = 0;
	var total_price = 0;
	var t_price = 0;
    var t_number = 1;
    var t_dis = 0;
    var code_dis = 0;
	$(document).ready(function()
			{
				$('tr').each(function()
				{
					sum_price = 0;
                    $(this).find('.price_pro').each(function()
							{
								var value_price= $(this).text();
								if(value_price.length !==0)
									{                                    	
										t_price = parseFloat(value_price) ;
									}
							});
                    $(this).find("#num_val").each(function(){
                    	t_number = this.value;
                    	sum_price = t_price * t_number;                     	
                    	
                	}); 
                    $(this).find(".price").html(sum_price);
                          
				});
			 	   
				total_price = 0;
                $(this).find('.price').each(function()
						{
							var value_price= $(this).text();
							if(value_price.length !==0)
								{                                    	
								total_price += parseFloat(value_price) ;
								}
						});
                code_dis = 0;
                
                
                $(".bot-cart").find('#total_price').html(total_price);
                
                $('tr').change(function()
        				{
		                    $(this).find('.price_pro').each(function()
									{
										var value_price= $(this).text();
										if(value_price.length !==0)
											{                                    	
												t_price = parseFloat(value_price) ;
											}
									});
		                    $(this).find("#num_val").each(function(){
		                    	t_number = this.value;
		                    	sum_price = t_price * t_number; 
		                	}); 
		                    $(this).find(".price").html(sum_price);
		                    total_price =0;
		                    $('tr').find(".price").each(function(){
		                    	var value_price= $(this).text();
								if(value_price.length !==0)
									{                                    	
										total_price += parseFloat(value_price) ;
									}
		                	}); 
		                    $('.bot-cart').find("#coupon_ap").each(function(){
		                    	var value_price = $(this).text();
								if(value_price.length !==0)
									{                                    	
										if(total_price-parseFloat(value_price) >= 0)
											{
												
											total_price-=parseFloat(value_price);
											}
										else{
											total_price = 0;
										}
									}
		                	});
		                    $(".bot-cart").find('#total_price').html( total_price);
        				});
			});
	function applycoupon({ valueee = "" })
	{
		var total_price = 0;
		console.log(valueee);
		
		$(document).ready(function()
			{
				$(".bot-cart").find('#coupon_ap').html(valueee);
				
		});}
		
	
</script>

</head>
<body>
	<main class="main_cartform">
		<div>
			<h2
				style="font-size: 40px; padding: 30px; font-family: 'Fasthand', cursive;">Shopping
				Cart</h2>
		</div>

		<div class="cart-container text-table">
			<table border="1" class="cart-table">
				<thead>
					<tr>
						<td>Number</td>
						<td>Image</td>
						<td>Product</td>
						<td>Price</td>
						<td>Quantity</td>
						<td>Total</td>
						<td>Remove</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a>1</a></td>
						<td><img src="./assets/img/anya3.jpg" alt=""></td>
						<td>
							<h5>anya loli hop phap</h5>
						</td>
						<td>
							<h5 class="price_pro">65</h5>
						</td>
						<td><input class="w-25 pl-1" value="1" min="0" type="number"
							style="width: 50px" id="num_val"></td>
						<td>
							<h5 class="price"></h5>
						</td>
						<td><a href=""><i class="fas fa-trash-alt"></i></a></td>
					</tr>
					
				</tbody>
			</table>
		</div>
		<div class="bot-cart">
			<div class="coupon">
				<h5 style="color: white; background: #333; padding: 10px 10px;">COUPON</h5>
				<h6 class="text-coupon">Enter your coupon code if you have one.</h6>
				<input class="input_cart" placeholder="coupon code here">
				<button onclick="applycoupon({valueee:'200'})">APPLY COUPON</button>

			</div>
			<div class="cart-total">
				<h5 style="color: white; background: #333; padding: 10px 10px;">CART
					TOTAL</h5>
				<div class="cart-total_top">
					<h6>Coupon</h6>
					<p id="coupon_ap"></p>
				</div>
				<div class="cart-total_bet">
					<h6>Ship</h6>
					<p>$000.0000</p>
				</div>
				<div class="cart-total_bot">
					<h6>total</h6>
					<p id="total_price">100</p>
				</div>
				<button class="input_cart">Process to checkout</button>

			</div>
		</div>
	</main>
</body>
<%@ include file="footer.jsp"%>
</html>
