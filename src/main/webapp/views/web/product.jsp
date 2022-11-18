 <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Shop Shoe</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<c:url value="./views/web/assets/css/base.css"/>">
        <link rel="stylesheet" href="<c:url value="./views/web/assets/css/product.css"/>">
        <!--font-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Fasthand&display=swap" rel="stylesheet">
        <!--icon-->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <head class="header">
            <div class="menu_top">
                <div class="menu_top-baner">
                    <p>SHOES</p>
                    <nav>
                        <ul>
                            <li><a href="main.html" title="" style="text-decoration: underline;">Home</a></li>
                            <li><a href="" title="">About</a></li>
                            <li><a href="intro.html" title="">shop</a></li>
                            <li><a href="" title="">ADIDAS</a></li>
                            <li><a href="" title="">NIKE</a></li>
                            <li><a href="" title="">Sale</a></li>
                            <li class="hover_icon" >
                                <a>
                                    <i class="fa fa-search" style="color:yelow"></i>
                                        <div class="header__qr hover-search">
                                            <i class="fa fa-search" style="color:yelow"></i>
                                            <input  placeholder="search" >
                                        </div>   
                                </a>
                            </li>
                            <li class="hover_icon" >
                                <a href="cart.html" title="">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                </a>
                                <div class="header__qr cart_dasboard">
                                    <ul>
                                        <li>no product</li>
                                        <li><i class="fa fa-frown-o" aria-hidden="true"></i></li>
                                    </ul>
                                </div> 
                            </li>
                            <li class="hover_icon">
                                <i class="fa fa-bars" style="color:yelow"></i>
                                <div class="header__qr menu_dasboard">
                                    <ul>
                                        <li><a href="login.html">login</a></li>
                                        <li><a href="shop.html">shop</a></li>
                                        <li><a href="cart.html">cart</a></li>
                                        <li><a href="">about</a></li>
                                        <li><a href="intro.html">contact</a></li>
                                    </ul>
                                </div> 
                            </li>
                        </ul>
                    </nav>
                </div>

            </div>
        </head>
        <!--header-->
        <main class="container"> 
            <div class="container-con">
                <div class="con-left">
                    <div class="content-img">
                        <a href=""> <img src="https://assets.reebok.com/images/w_600,f_auto,q_auto/cf1f177875c54676a45cadc800f9af16_9366/Reebok_Nano_X2_Men's_Training_Shoes_Black_GW5146_01_standard.jpg"></a>
                        <a href=""> <img src="https://assets.reebok.com/images/w_600,f_auto,q_auto/e3142927a70442d98c20acc5017ec9a5_9366/Nano_X1_Men's_Training_Shoes_Grey_H02830_01_standard.jpg"></a>
                        <a href=""> <img src="https://images.meesho.com/images/products/44009963/kxwus_512.jpg"></a>
                        <a href=""> <img src="https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1640850395.31014951.jpg"></a>
                    </div>                
                </div>
                <div class="slider-content-btn ">
                    <i class="fa fa-chevron-left" style="font-size:36px"></i>
                    <i class="fa fa-chevron-right" style="font-size:36px"></i>
                </div>
                
                <div class="con-right">
                    <h2>${model.productName}</h2>
                    <h3>Code product: ${model.productId}</h3>
                    <span>$15.000</span>
                    <p>made in Earch</p>
                    <div class="quality">
                        <p style="font-weight:bold; padding-right:20px;">Quantity</p>
                        <input class="w-25 pl-1" value="1" type="number" style="width:50px">                        
                    </div>
                    <div class="container_product-content-right_button">
                        <button> <i class="fa fa-shopping-cart"></i><p>Buy product</p></button>
                            <button><p>Find product at shop</p></button>
                    </div>
                    <div class="container_product-content-right_icon">
                        <a href="" class="container_product-content-right_icon-item">
                            <i class="fa fa-phone"></i><p>Hotline</p>
                        </a>
                        <a href="" class="container_product-content-right_icon-item">
                            <i class="fa fa-comments"></i><p>Chat</p>
                        </a>
                        <a href="" class="container_product-content-right_icon-item">
                            <i class="fa fa-envelope"></i><p>Mail</p>
                        </a>
                    </div>
                </div>
            </div>
            <div style=" margin:20px;">
                <span style="color:red; text-decoration:underline; font-size:20px; padding: 0 100px; margin-top:20px;">Dental</span>
            </div>
            <div class="dental">
                <div class="content-dental">
                    <p>${model.desciption}</p>
                </div>
            </div>
            
            <script src="./assets/func/product.js"></script>
        </main>
        <!--main-->
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
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>