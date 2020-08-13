<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
        <?php 
        $content = '<img src="Product.jpeg" class="imgLeft" />'
   
       
        ?>
        <link rel="stylesheet" type="text/css" href="Stylesheet.css" />
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">             
            </div>
            
            <nav id="navigation">
                <ul id="nav">
                    <li><a href="index.php">HOME</a></li>
                    <li><a href="users.php">SALES</a></li>
                    <li><a href="product.php">PRODUCT</a></li>
                    <li><a href="order3.php">ORDERS</a></li>
                </ul>
            </nav>
            <div id="content_area">
                <?php echo $content; ?>
      
      <h3>WELCOME TO E-MART </h3>
      <h>
          One of India's biggest shopping mart.It offers large variety of products for its customer.It mainly aims at providing customer satisficattion with full value guarentee in all their products.
      </h>


            </div>
            
            
           
            
            <footer>
                <p>All rights reserved</p>
            </footer>
      </div>
    </body>
</html>
