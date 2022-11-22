<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Shop Shoe</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="views/web/assets/css/base.css"/>">
<link rel="stylesheet" href="<c:url value="views/web/assets/css/home.css"/>">
<!--font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Fasthand&display=swap"
	rel="stylesheet">
<!--icon-->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<head class="header">
<div class="menu_top">
	<div class="menu_top-baner">
		<p>SHOES</p>
		<nav>
			<ul>
				<li><a href="<c:url value="/home"/>" title=""
					>Home</a></li>
				<li><a href="<c:url value="/views/web/about.jsp"/>" title="">About</a></li>
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
					</div>
				
				<li><c:if test="${not empty USERMODEL}">
					<li class="nav-item">
						<a class="nav-link" href='#'>Welcome, ${USERMODEL.fullName}</a></li>
					<li class="nav-item">
						<a class="nav-link" href='<c:url value="/logout?action=logout"/>'>Logout</a></li>
					</c:if>
					<c:if test="${empty USERMODEL}"> 
						<li><a href="<c:url value='/login?action=login'/>">Login</a></li>
					</c:if>
				<li class="hover_icon"><i class="fa fa-bars"
					style="color: yelow"></i>
					<div class="header__qr menu_dasboard">
						<ul>
							<li><a href="shop.html">shop</a></li>
							<li><a href="cart.html">cart</a></li>
							<li><a href="">about</a></li>
							<li><a href="<c:url value="./views/web/contact.jsp"/>">contact</a></li>
						</ul>
					</div></li>
			</ul>
		</nav>
	</div>


</div>
</head>
</body>

</html>