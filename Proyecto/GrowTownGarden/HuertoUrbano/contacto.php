<!-- /*
* Template Name: Agriculture
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
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
      
      <div class="intro-section site-blocks-cover innerpage" style="background-image: url('images/hero_1.jpg');">
        <div class="container">
          <div class="row align-items-center text-center">
            <div class="col-lg-12 mt-5" data-aos="fade-up">
              <h1>Contacta con nosotros</h1>
              <p class="text-white text-center">
                <a href="index.php">Inicio</a>
                <span class="mx-2">/</span>
                <span>Contacto</span>
              </p>
            </div>
          </div>
        </div>
      </div>



      <div class="site-section">
        <div class="container">

          <div class="row">
            
                <div class="col-lg-6"> 
                  <div class="row">

                    <div class="col-md-6 form-group">
                      <label for="fname">Nombre</label>
                      <input type="text" id="fname" class="form-control form-control-lg">
                    </div>
                    <div class="col-md-6 form-group">
                      <label for="lname">Apellidos</label>
                      <input type="text" id="lname" class="form-control form-control-lg">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 form-group">
                      <label for="eaddress">Email</label>
                      <input type="text" id="eaddress" class="form-control form-control-lg">
                    </div>
                    <div class="col-md-6 form-group">
                      <label for="tel">Teléfono</label>
                      <input type="text" id="tel" class="form-control form-control-lg">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="message">Mensaje</label>
                      <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-12">
                        <form id="contacto-form">
                      <input type="submit" value="Enviar mensaje" class="btn btn-primary rounded-0 px-3 px-5">
                        </form>
                    </div>
                  </div>

                </div>
            
            <div class="col-lg-6">

              <div class="row">
                <div class="col-md-6 mb-4 mb-md-0">
                  <div id="email-response"></div>
                </div>
                
              </div>

            </div>
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


    <script src="js/scriptemail.js"></script>
    <script src="js/main.js"></script>

    
  </body>

  </html>
