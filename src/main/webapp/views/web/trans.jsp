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
<link rel="stylesheet" href="./assets/css/trans.css">
<!--font-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var sum_price = 0;
	var t_price = 0;
    var t_number = 0;
    var t_dis = 0;
    var code_dis = 0;
	$(document).ready(function()
			{
				$('tr').each(function()
				{
					t_price = 0;
                    t_number =0;
                    t_dis = 0;
                    console.log(t_price);
                    $(this).find('.item_discount').each(function()
							{
								var dis= $(this).text();
								if(dis.length !==0)
									{                                    	
										t_dis = parseFloat(dis);
									}
							});
                    $(this).find('.item_number').each(function()
							{
								var number= $(this).text();
								if(number.length !==0)
									{                                    	
										t_number = parseFloat(number);
									}
							});
					$(this).find('.item_price').each(function()
							{
								var price= $(this).text();
								if(price.length !==0)
									{                                    	
										t_price = t_number * parseFloat(price) - t_dis;
									}
							});   
                    $(this).find('#code_dis').each(function()
							{
								var cdis= $(this).text();
								if(cdis.length !==0)
									{                                    	
										code_dis = parseFloat(cdis);
									}
							}); 
                    sum_price += t_price;
				});
                sum_price -= code_dis;
			$(this).find('#total_pay').html('= ' + sum_price+'$');
			});

</script>

<!--icon-->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<script src="https://www.paypal.com/sdk/js?client-id=AUWfXUeBuIo-uiW1c-nYdbCoT77iWdyx93uB08lv0Xikfx3qANnIZLlTEVRCSscSpLGH6n1jHXBeY46X&currency=USD"></script>
	<main class="main_payment">
		<div class="container">
			<div class="payment-top-wrap">
				<div class="line"></div>
				<div class="cricle"></div>
				<div class="cricle1"></div>
				<div class="cricle2"></div>
				<div class="top-delivery payment-top_item">
					<i class="fas fa-shopping-cart"></i>
				</div>
				<div class="top-address payment-top_item">
					<i class="fas fa-map-marked-alt"></i>
				</div>
				<div class="top-payment payment-top_item">
					<i class="fas fa-money-check-alt"></i>
				</div>
				<p class="text-cart">CART</p>
				<p class="text-address">ADDRESS</p>
				<p class="text-payment">PAYMENT</p>
			</div>
		</div>
		<div class="container">
			<div class="payment-row">
				<div class="row-left">
					<div class="method-delivery">
						<p style="font-weight: bold;">Method to delivery</p>
						<div class="content-row-left">
							<input name="method-payment1" type="radio"> <label for="">Fast
								delivery</label>
						</div>
					</div>
					<div class="method-payment">
						<p style="font-weight: bold;">Method to payment</p>
						<p>All transactions are secure and encrypted. Credit card
							information will not be saved.</p>
						<!--<div class="method-payment-left">
                                <input name="method-payment"  type="radio">
                                <label for="">Pay by Paypal</label>
                            </div>
                            <div class="row-img-payment">
                                <img src="https://s6.upanh.pro/2019/09/23/paypal-logo.png">
                            </div>-->

						<div class="method-payment-left">
							<input name="method-payment" type="radio"> <label for="">Pay
								at home</label>
						</div>
						
						<!--paypal-->
						<p style="font-weight: bold; text-align: center;">Pay with
							Paypal</p>
						<script
							src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>
						<!-- Set up a container element for the button -->
						<div id="paypal-button-container"></div>



						<!--scrip paypal-->
						<script>
                                paypal.Buttons({
                                  // Sets up the transaction when a payment button is clicked
                                  createOrder: (data, actions) => {
                                    return actions.order.create({
                                      purchase_units: [{
                                        amount: {
                                          value: '77.44' // Can also reference a variable or function/// in here
                                        }
                                      }]
                                    });
                                  },
                                  // Finalize the transaction after payer approval
                                  onApprove: (data, actions) => {
                                    return actions.order.capture().then(function(orderData) {
                                      // Successful capture! For dev/demo purposes:
                                      console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                                      const transaction = orderData.purchase_units[0].payments.captures[0];
                                      alert(`Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details`);
                                      // When ready to go live, remove the alert and show a success message within this page. For example:
                                      // const element = document.getElementById('paypal-button-container');
                                      // element.innerHTML = '<h3>Thank you for your payment!</h3>';
                                      // Or go to another URL:  actions.redirect('thank_you.html');
                                    });
                                  }
                                }).render('#paypal-button-container');
                              </script>

						<script>
                                  createOrder: (data, actions) => {
                                      return actions.order.create({
                                         "purchase_units": [{
                                            "amount": {
                                              "currency_code": "USD",
                                              "value": "100",
                                              "breakdown": {
                                                "item_total": {  /* Required when including the items array */
                                                  "currency_code": "USD",
                                                  "value": "100"
                                                }
                                              }
                                            },
                                            "items": [
                                              {
                                                "name": "First Product Name", /* Shows within upper-right dropdown during payment approval */
                                                "description": "Optional descriptive text..", /* Item details will also be in the completed paypal.com transaction view */
                                                "unit_amount": {
                                                  "currency_code": "USD",
                                                  "value": "50"
                                                },
                                                "quantity": "2"
                                              },
                                            ]
                                          }]
                                      });
                                    },
                              </script>
						<!--scrip paypal-->

					</div>
				</div>
				<div class="row-right">
					<div class="payment-right-button">
						<input type='text' placeholder="Discount code">
						<button>
							<i class="fa fa-check" aria-hidden="true"></i>
						</button>
					</div>
					<div class="table-price">
						<table>
							<thead>
								<tr>
									<th>Product</th>
									<th>Discount</th>
									<th>Number</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>TDD</td>
									<td class="item_discount">100</td>
									<td class="item_number">2</td>
									<td class="item_price">200</td>
								</tr>
								<tr>
									<td>TDD</td>
									<td class="item_discount">100</td>
									<td class="item_number">4</td>
									<td class="item_price">200</td>
								</tr>
								<tr>
									<td>TDD</td>
									<td class="item_discount">100</td>
									<td class="item_number">2</td>
									<td class="item_price">700</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td>Discount</td>
									<td></td>
									<td></td>
									<td id="code_dis">300</td>
									<!---->
								</tr>
								<tr>
									<td>To Pay</td>
									<td></td>
									<td></td>
									<td id="total_pay">0</td>
									<!-- total pay get it and push in value to pay  -->
									<!---->
								</tr>
							</tfoot>
						</table>
					</div>
				</div>

			</div>

		</div>
		<div class="content-right-payment">
			<button>Continue to pay</button>
		</div>
	</main>
</body>
<%@ include file="footer.jsp"%>
</html>
