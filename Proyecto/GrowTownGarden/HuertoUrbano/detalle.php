<!-- /*
* Template Name: Agriculture
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<?php include "conexiondb.php" ?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />


  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Marcellus&family=Open+Sans&display=swap" rel="stylesheet">


  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">
    
  <title>Growtown Garden</title>

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <?php
         include("header.php") 
    ?>


      <div class="site-section">
        <div class="container">
          <div class="row justify-content-between align-items-center">
            
            <?php
            $nombre = $_GET["id"];
            
            $peticion = "SELECT * FROM vegetales WHERE nombre='".$nombre."'";

            $resultado = mysqli_query($enlace, $peticion);
            while ($fila = $resultado->fetch_assoc()) {
                 echo '
                 <div class="col-lg-5 order-lg-1">
                 <br>
                 <h2 class="text-primary mb-4">'.$fila['nombre'].'</h2>
                 <ul>
                    <li>Época de siembra: '.$fila['epocasiembra'].'</li>
                    <li>Frecuencia de riego: '.$fila['frecuenciariego'].'</li>
                  </ul>
                </div>
                 ';
            }
            ?>
             
              
          </div>
            
            <div class="container mt-5">
                <h1>Pregúnta tus dudas a OK</h1>
                <p>Consulta a nuestra IA sobre huertos urbanos, quizás te pueda ayudar:</p>
                <form id="gpt3-form">
                    <div class="form-group">
                        <label for="prompt">Consulta</label>
                        <textarea class="form-control" id="prompt" name="prompt" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Obtener respuesta</button>
                </form>
                <div id="gpt3-response" class="mt-3"></div>
            </div> 
            
        </div>
      </div>

    <?php
        include("footer.php");
    ?>     

    </div>
    <!-- .site-wrap -->


    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#116530"/></svg></div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.mb.YTPlayer.min.js"></script>
    
    <script src="js/script.js"></script>
    <script src="js/main.js"></script>

    
  </body>

  </html>