 <%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Shop Shoe</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/showshop.css">
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

                <div class="menu_top-pro">                
                    <div class="banner">
                        <h1>Shop</h1>
                        <h3>Home <span> &gt;</span> Shop</h3>
                    </div>
                </div>
            </div>
        </head>
        <!--header-->
        <main class="container"> 
            <div class="container__main">
                <div class="container__main-left">
                    <div class="slide-bar">
                        <aside class="provider">
                            <div class="title_pro"> PRODUCT CATEGORIES</div>
                            <ul clas="name_pro">
                                <li> ADIDAS</li>
                                <li> NIKE</li>
                                <li> NEO</li>
                            </ul>
                        </aside>
                        <aside class="price ">
                            <div class="text-left">Price</div>                    
                            <div class="price-input">
                                <div class="field">
                                    <span>Min</span>
                                    <input type="number" class="input-min" value="100">
                                </div>
                                <div class="separator"> - </div>
                                <div class="field">
                                    <span>Max</span>
                                    <input type="number" class="input-max" value="500">
                                </div>
                            </div>
                            <div class="slider">
                                <div class="progress"></div>
                            </div>
                            <div class="range-input">
                                <input type="range" class="range-min" min="0" max="10000" value="2500" step="100">
                                <input type="range" class="range-max" min="0" max="10000" value="7500" step="100">
                            </div>
                            <div class="price_label" style=""> Price: <span class="from">$0</span> — <span class="to">$10000</span> </div> 
                            <div class="clear"></div> 
                            <button type="submit" class="button-filter">Filter</button> 
                            <script src="./assets/func/script.js"></script>
                        </aside>
                    </div>
                </div>
                <div class="container__main-right">
                    
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
                                <script src="./assets/func/showpr.js"></script>                          
                                    
                                
                                
                            </ul>
                        </div>
                        <script>
                            function viewproduct() {
                                viewView({
                                  linkimg: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/47112d0a-dc23-4b74-876c-b638fecf0af2/air-jordan-1-retro-high-og-shoes-a7Zzxm.png"
                                });
                              }
                        </script>
                    </div>
                </div>
            </div>
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