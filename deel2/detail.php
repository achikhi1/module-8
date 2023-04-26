<?php
 include 'conection.inc.php';


try {

    $id = $_GET['id'];
    $conn = new PDO("mysql:host=$servername;dbname=webshop", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT * FROM databasewebshop WHERE id = $id");
    $stmt->execute();
  
    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $p_arr = $stmt->fetch();
    
    
    
  } catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
  }
  
  ?>
  
  

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="detail.css" />
    <title>Document</title>
  </head>
  <body>
    <div>
      <ul id="navbar">
        <li>
          <a href="#"
            ><img src="./fotos/zaralogo.webp" class="logo" alt=""
          /></a>
        </li>
        <input
          type="text"
          name="searchbar"
          placeholder="search"
          id="searchbar"
        />
        <li><a class="active" href="index.html">Home</a></li>
        <li><a href="shop.html">shop</a></li>
        <li><a href="blog.html">blog</a></li>
        <li><a href="about.html">about</a></li>
        <li><a href="contact.html">contact</a></li>
        <li>
          <a href="cart.html"><i class="fa-regular fa-bag-shopping"></i></a>
        </li>
      </ul>
    </div>

    <main>
  
      <div class="container">
        <div class="kleine-fotos">
        <img src="<?php echo $p_arr ['plaatje'] ?> "class="item">
        <?php echo $p_arr['naam'] ?>
            <?php echo $p_arr['kleur'] ?>
            <?php echo $p_arr['prijs'] ?>
           
        </div>
        <div class="grote-foto">
         
        </div>
      </div>

      <div class="right-col">
        <div class="container-r">
          <div class="kleine-fotos-r">
            
          </div>
        </div>

        <!-- <div class="container-tr">
          <div class="tekst-r">
            <h1>Grey Vest</h1>
            <h2><strong>CLUB - Vest</strong></h2>
            <h3>
              Vanaf €39,95 <span class="originalprice">€120,33</span>
              <span style="font-size: 12px; color: rgb(120, 120, 120)"
                >Inclusief btw</span -->
              
            </h3>
          </div>
        </div>
        <div class="containter-stars">
          <div class="rating-stars">
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
           
          </div>
        </div>
        <div class="container-r-u">
          <div class="right-under">
            <h1>Uitverkocht</h1>
            <h4>
              We sturen je een mailtje als we de artikel weer op vooraad hebben.
            </h4>
            <input
              type="email"
              id="emailr-u"
              name="email"
              placeholder="E-mail"
              
            />
            

            <select name="size" id="size">
              <option value="XS">XS</option>
              <option value="S">S</option>
              <option value="M">M</option>
              <option value="L">L</option>
              <option value="Xl">XL</option>
              <option value="XXl">XXL</option>
              <div class="button">
              </li>
            </div>
          </select>
        </div>
        <button><a href="bestelpagina.php?product=trui&prijs=75,00">Order</a></button>
        <!-- <input type="submit" value="Order" class="submit"> -->
        </div>
      </div>
      
    </main>
  </body>
</html>
