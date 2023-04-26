<?php
 include 'conection.inc.php';



try {
   
    $stmt = $conn->prepare("SELECT * FROM databasewebshop");
    $stmt->execute();
  
    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    
  } catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
  }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <link rel="stylesheet" href="style.css">
</head>
<body>
   <section id="header">
    <a href="#"><img src="./fotos/zaralogo.png" class="logo" alt=""></a>

    <div>
        <ul id="navbar">
            <li><a class="active" href="index.html">Home</a></li>
            <li><a href="shop.html">shop</a></li>
            <li><a href="blog.html">blog</a></li>
            <li><a href="about.html">about</a></li>
            <li><a href="contact.html">contact</a></li>
            <li><a href="cart.html"><i class="fa-regular fa-bag-shopping"></i></a></li>
        </ul>
    </div>
   </section>
  

   <section id="hero">
    <h2>Super value deals</h2>
    <h1>On all products</h1>
    <p>Save more with coupons & up to 70% off!</p>
    <button>Shop Now</button>
   </section>

   <section id="feature" class="section-p1">
    <div class="fe-box">
        <img src="./fotos/smartphone-black-glyph-icon-mobile-cell-phone-vector-39926549.webp" alt="">
        <h6>Free Shipping</h6>
    </div>
    <div class="fe-box">
        <img src="./fotos/fast-delivery-icon-vector-26611538.webp" alt="">
        <h6>Online Order</h6>
    </div>
    <div class="fe-box">
        <img src="./fotos/save-up-isolated-icon-piggy-bank-and-falling-vector-27017692.webp" alt="">
        <h6>Save Money</h6>
    </div>
    <div class="fe-box">
        <img src="./fotos/promotions-discounts-sale-businessman-juggling-vector-5883867.webp" alt="">
        <h6>Promotions</h6>
    </div>
    <div class="fe-box">
        <img src="./fotos/shopping bag.png" alt="">
        <h6>Happy Sell</h6>
    </div>
    <div class="fe-box">
        <img src="./fotos/laptop.png" alt="">
        <h6>F24/7 Support</h6>
    </div> </section>
   <section id="product1" class="section-p1">
    <h2>Featured Products</h2>
    <p>Summer Collection New Morden Design</p>
    <div class="pro-container">
        <?php
try{
$stmt = $conn->prepare("SELECT * FROM databasewebshop");
    $stmt->execute();
  
    // set the resulting array to associative
$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
foreach($stmt->fetchAll() as $k=>$v) {
    ?>
     <div class="pro">
            <img src="<?php echo $v['plaatje'] ?>">
            <?php echo $v['naam'] ?>
            <?php echo $v['kleur'] ?>
            <?php echo $v['prijs'] ?>
            <div class="des">
                <span>adidas</span>
                <h5>Cartoon Astronaut T-Shirts</h5>
                <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                </div>
                <h4>$78</h4>
            </div>
            <a href="detail.php?id=<?php echo $v['id'] ?>"><i class="fal fa-shopping-cart cart"></i></a>
        </div>
     <?php

}

} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
  }
?>
   </section>

   <footer class="section-p1">
        <div class="col">
            <img src="./fotos/zaralogo.webp" alt="">
            <h4>Contact</h4>
            <p> <strong>Address:</strong> 562 Wellington Road, street 32, San Francisco</p>
            <p> <strong>Phone</strong> +01 2222 365 //(+91) 01 2345 6789</p>
            <p> <strong>Hours</strong> 10:00 - 18:00, Mon-Sat</p>
            <div class="Follow">
                <h4>Follow Us</h4>
                <div class="icon">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter-f"></i>
                    <i class="fab fa-instagram-f"></i>
                    <i class="fab fa-pinterest-f"></i>
                    <i class="fab fa-youtube-f"></i>
                </div>
            </div>
        </div>

        <div class="col">
            <h4>About</h4>
            <a href="#">About us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms & Conditions</a>
            <a href="#">Contact Us</a>
        </div>

        <div class="col">
            <h4>My Acount</h4>
            <a href="#">Sign In</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track My Order</a>
            <a href="#">Help</a>
        </div>

        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Goolge Play</p>
            <div class="row">
                <img src="./fotos/app-store-apple-google-play-download-png-favpng-4JVPjAett8h2RDPDTY0ETSUH0.jpg">
                <img src="./fotos/download.png">
            </div>
            <p>Secured Payment Gateway</p>
        </div>
   </footer>
    
    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="main.js"></script>
</body>
</html>