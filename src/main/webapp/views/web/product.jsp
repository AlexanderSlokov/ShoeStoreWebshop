 <%@ include file="/common/taglib.jsp" %>
 <%@ include file="header.jsp" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Shop Shoe</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<c:url value="/views/web/assets/css/base.css"/>">
        <link rel="stylesheet" href="<c:url value="/views/web/assets/css/product.css"/>">
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
            <div class="container-con">
                <div class="con-left">
                    <div class="content-img">
                        <a href=""> <img src="<c:url value="/imgShoes/${model.productImage}"/>"></a>
                       
                    </div>                
                </div>
                <div class="slider-content-btn ">
                    <i class="fa fa-chevron-left" style="font-size:36px"></i>
                    <i class="fa fa-chevron-right" style="font-size:36px"></i>
                </div>
                
                <div class="con-right">
                    <h2>${model.productName}</h2>
                    <h3>Code product: ${model.productId}</h3>
                    <span>${model.price} VND</span>
                    <p>Made in ${model.madeIn}</p>
                    <div class="quality">
                        <p style="font-weight:bold; padding-right:20px;">Quantity</p>
                        <input class="w-25 pl-1" value="1" min ="0"type="number" style="width:50px">                        
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
            
            <script src="<c:url value="/views/web/assets/func/product.js"/>"></script>
        </main>
        <!--main-->
     
    </body>
     <%@ include file="footer.jsp" %>  
</html>