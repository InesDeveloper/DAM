<?php include "../admin/conexiondb.php" ?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Dashboard Template · Bootstrap</title>
      <script src="https://kit.fontawesome.com/e077bc2bee.js" crossorigin="anonymous"></script>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/dashboard/">

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">Company name</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Sign out</a>
    </li>
  </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="home"></span>
              Escritorio <span class="sr-only">(current)</span>
            </a>
          </li>
            
        <?php
 /*Esta parte de codigo la traemos del paneldecontrol de la carpeta admin. Cambiamos la class del nav-link para poder movernos por nuestra tabla en la web*/
    
            $peticion = "SHOW TABLES";

            $resultado = mysqli_query($enlace, $peticion);
            while ($fila = $resultado->fetch_assoc()) {
                echo '
                    <li class="nav-item">
                        <a class="nav-link" href="?tabla='.$fila['Tables_in_cursoaplicacionesweb'].'">
                          <span data-feather="file"></span>
                          '.$fila['Tables_in_cursoaplicacionesweb'].'
                        </a>
                      </li>
                ';
            }
        ?>
            
        
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Informes guardados</span>
          <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
            
        <?php
 /*Esta parte de codigo copiamos de arriba de la carpeta admin*/
    
            $peticion = "SHOW FULL TABLES IN cursoaplicacionesweb WHERE TABLE_TYPE LIKE 'VIEW'";

            $resultado = mysqli_query($enlace, $peticion);
            while ($fila = $resultado->fetch_assoc()) {
                echo '
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                          <span data-feather="file-text"></span>
                          '.$fila['Tables_in_cursoaplicacionesweb'].'
                        </a>
                      </li>
                ';
            }
        ?>
            
        </ul>
      </div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>
<!--
      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
-->
      <h2>Section title</h2>
      <div class="table-responsive">
<!-- Vamos a poner un style para que nos deje hacer escrol en la web ya que no nos lo permite el bootstrap. Al poner importan significa que si ese estilo esta en contradiccion con otro lo que yo escriba manda-->
          <style>.table-responsive{overflow-x: visible !important;}</style>
        <table class="table table-striped table-sm">
          <thead>
            <tr>
                
        <?php
 /*Esta parte de codigo copiamos de arriba de la carpeta admin*/
    
            $peticion = "SHOW COLUMNS FROM ".$_GET['tabla'].";";

            $resultado = mysqli_query($enlace,$peticion);
            while ($fila = $resultado->fetch_assoc()) {
                echo '
                    <th>'.$fila['Field'].'</th>
                        
                      
                ';
            }
        ?>  
                <th>Ver</th> 
                <th>Actualizar</th> 
                <th>Eliminar</th> 
                
            </tr>
          </thead>
          <tbody>
              
              <?php
 /*Esta parte de codigo copiamos de arriba de la carpeta admin*/
    
            $peticion = "SELECT * FROM ".$_GET['tabla'].";";

            $resultado = mysqli_query($enlace, $peticion);
            while ($fila = $resultado->fetch_array()) {
                echo '<tr>'; //Arranca la fila
                
                for($i = 0;$i<count($fila)/2;$i++){
                    echo '<td>'.$fila[$i].'</td>'; // Dame las columnas de la fila  
                }
                echo '
                <td><a href="ver.php?tabla='.$_GET['tabla'].'&id='.$fila[0].'"><i class="fas fa-eye"></i></a></td>
                <td><a href="actualizar.php?tabla='.$_GET['tabla'].'&id='.$fila[0].'"><i class="fa fa-refresh" aria-hidden="true"></i></a></td>
                <td><a href="eliminar.php?tabla='.$_GET['tabla'].'&id='.$fila[0].'"><i class="fas fa-trash-alt"></i></a></td>
                       
                ';
                 echo '</tr>'; //Cierra la fila
            }
        ?>
           
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
        <script src="dashboard.js"></script></body>
</html>
