
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Shop Shoe</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="./views/web/assets/css/base.css"/>">
<link rel="stylesheet" href="<c:url value="./views/web/assets/css/flogin.css"/>">
<!--font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Roboto:wght@300;400;500;700&display=swap"
	rel="stylesheet">
<!--icon-->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="" async defer></script>
 <!-- bootstrap -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
<head class="header">
<div class="menu_top">
	<div class="menu_top-baner">
		<p>SHOES</p>
		<nav>
			<ul>
				<li><a href="main.html" title=""
					style="text-decoration: underline;">Home</a></li>
				<li><a href="" title="">About</a></li>
				<li><a href="intro.html" title="">shop</a></li>
				<li><a href="" title="">ADIDAS</a></li>
				<li><a href="" title="">NIKE</a></li>
				<li><a href="" title="">Sale</a></li>
				<li class="hover_icon"><a> <i class="fa fa-search"
						style="color: yelow"></i>
						<div class="header__qr hover-search">
							<i class="fa fa-search" style="color: yelow"></i> <input
								placeholder="search">
						</div>
				</a></li>
				<li class="hover_icon"><a href="cart.html" title=""> <i
						class="fa fa-shopping-cart" aria-hidden="true"></i>
				</a>
					<div class="header__qr cart_dasboard">
						<ul>
							<li>no product</li>
							<li><i class="fa fa-frown-o" aria-hidden="true"></i></li>
						</ul>
					</div></li>
				<li class="hover_icon"><i class="fa fa-bars"
					style="color: yelow"></i>
					<div class="header__qr menu_dasboard">
						<ul>
							<li><a href="<c:url value='/login?action=login'/>">login</a></li>
							<li><a href="shop.html">shop</a></li>
							<li><a href="cart.html">cart</a></li>
							<li><a href="">about</a></li>
							<li><a href="intro.html">contact</a></li>
						</ul>
					</div></li>
			</ul>
		</nav>
	</div>

	<div class="menu_top-pro"></div>
</div>
</head>
<!--header-->


<!--baner-->
<main class="main_logiform" >
	<div class="loginform" style="margin-top:50px;">
		<div class="loginform__left ">
			<img
				src="https://images.meesho.com/images/products/89867327/hh4s5_512.jpg"
				alt="logowed">

		</div>
		<div class="loginform__right">
			<div id="for-login">
			<div id="noti1" class="noti" style="position: relative;left: -863px;top: 97px; display:none;">
				<div class="alert alert-success">
					<strong>Success!</strong> This alert box could indicate a successful or positive action.
				</div>
				<div class="alert alert-danger">
					<strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
				</div>
			</div>
				
				<div class="loginform__right-header text_left">
					<a>LOGIN</a>
				</div>
				<form action="<c:url value='/login'/>" id="log" method="POST">
					<div class="loginform__right-body">
						<input class="inputlogin" placeholder="Email/Phone number"
							name="uname" id="uname" required> <input
							class="inputlogin" placeholder="Password" name="pass" id="pass"
							required>
						<button class="inputlogin" onclick="hamtam()">Login</button>
						<button class="inputlogin" style="color: red;"
							onclick="registerfun()">Register</button>
						<input type="hidden" value="login" name="action" /> <a
							class="textfoget" href="">Forget Password</a>
						<p>OR</p>
						<div class="login3">
							<ul>
								<li><a> <i class='fab fa-facebook-f'
										style='color: blue'></i> facebook
								</a></li>
								<li><a> <i class='fab fa-google-plus-g'
										style='color: red'></i> google
								</a></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
			<div id="for-register">
				<div class="loginform__right-header text_left">
					<a>REGRISTER</a>
				</div>
				<div class="loginform__right-body">
					<input class="inputregis" placeholder="Full name" name="uFullname"
						required> <input class="inputregis" placeholder="Email"
						name="uEmail" required> <input class="inputregis"
						placeholder="Phone number" name="uPhone" required> <input
						class="inputregis" placeholder="Password" name="uPass" required>
					<input class="inputregis" placeholder="Confirm password"
						name="uConfpass" required> <input class="inputregis"
						placeholder="Address" name="uaddress" required>
					<button class="inputregis" style="color: red;"
						onclick="registerfun1()">Register</button>
				</div>
			</div>
			<script>
				function registerfun() {
					document.getElementById("for-login").style.display = 'none';
					document.getElementById("for-register").style.display = 'block';
					document.getElementById("noti1").style.display = 'block';
				}
				function registerfun1() {
					document.getElementById("for-login").style.display = 'block';
					document.getElementById("for-register").style.display = 'none';
				}
			</script>
		</div>
	</div>
</main>
</body>
<footer class="footer">
	<div class="footer-container">
		<div class="footer-col">
			<h4>company</h4>
			<ul>
				<li><a href="#">about us</a></li>
				<li><a href="#">our services</a></li>
				<li><a href="#">privacy policy</a></li>
				<li><a href="#">affiliate program</a></li>
			</ul>
		</div>
		<div class="footer-col">
			<h4>get help</h4>
			<ul>
				<li><a href="#">FAQ</a></li>
				<li><a href="#">shipping</a></li>
				<li><a href="#">returns</a></li>
				<li><a href="#">order status</a></li>
				<li><a href="#">payment options</a></li>
			</ul>
		</div>
		<div class="footer-col">
			<h4>online shop</h4>
			<ul>
				<li><a href="#">watch</a></li>
				<li><a href="#">bag</a></li>
				<li><a href="#">shoes</a></li>
				<li><a href="#">dress</a></li>
			</ul>
		</div>
		<div class="footer-col">
			<h4>follow us</h4>
			<div class="social-links">
				<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
					class="fab fa-twitter"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a> <a href="#"><i
					class="fab fa-linkedin-in"></i></a>
			</div>
		</div>
	</div>
</footer>
</html>