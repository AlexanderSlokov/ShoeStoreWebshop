<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<head class="header">
<div class="menu_top">
	<div class="menu_top-baner">
		<p>SHOES</p>
		<nav>
			<ul>
				<li><a href="main.html" title=""
					>Home</a></li>
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
							<li><a href="intro.html">contact</a></li>
						</ul>
					</div></li>
			</ul>
		</nav>
	</div>


</div>
</head>
<!--header-->
</head>

</html>