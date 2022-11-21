  <%@ include file="header.jsp" %>  
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

    </body>
     <%@ include file="footer.jsp" %>  
</html>