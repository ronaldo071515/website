<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
<!-- boostrap css -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a3a8d3af24.js"></script>
    <title>Fundacion Fuerse</title>
    <link rel="shortcut icon" href="./img/fundacion.ico" type="image/x-icon">
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light" id="navbar">
  <a class="navbar-brand" href="./index.php"><img src="img/fundacion.png"  width="70" height="70" alt="logo" id="logoindex"> <b>Fundación Fuerse</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="#">Inicio 
        <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item"><a class="nav-link" href="#nosotros">Nosotros</a>
      </li>
      <li class="nav-item" style="margin-left:10px"><a class="nav-link" href="#clientes"> Clientes</a>
      </li>
      <li class="nav-item" style="margin-left:10px"><a class="nav-link" href="./view/contac.php"> Contactanos</a>
      </li>
      <li class="nav-item" style="margin-left:10px"></li>
      <div class="dropdown">
      <a href="#" style="margin-left:15px" class="btn  dropdown-toggle"  id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mas</a><br>
      <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
      <button class="dropdown-item" type="button" onclick="window.location='./view/servicios.php'">Productos y Servicios</button>
      <button class="dropdown-item" type="button" onclick="window.location='./view/acercade.php'">Acerca de</button>
    </div>
    </div>
    </ul>
  </div>
  <form class="form-inline my-2 my-lg-0">
      <button type="button" class="form-control mr-sm-2 btn-outline-secondary" data-toggle="modal" data-target="#loginModal"> Lo Gin</button>
    </form>
</nav>
<!---------------- imagen del Header estatica------------------->
<div class="bg"></div>
<div class="jumbotron1">
</div>
<script>
// Cuando el usuario se desplace hacia abajo 80 píxeles desde la parte superior del documento, cambie el tamaño del relleno de la barra de navegación y el tamaño de fuente del logotipo
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 10) {
    document.getElementById("navbar").style.padding = "5px 2px";
    document.getElementById("logo").style.fontSize = "5px";
  } else {
    document.getElementById("navbar").style.padding = "20px 2px";
    document.getElementById("logo").style.fontSize = "10px";
  }
}
</script>
<script>
var jumboHeight = $('.jumbotron1').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});
</script>
<body>

<!-- Modal Login -->
<!-- <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelleby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"> Ingresar</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="./includes/login.php" method="POST">
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label text-muted"> Usuario</label>
                        <input type="text" name="user" id="user" class="form-control" placeholder="Ususario" required>
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label text-muted"> Contraseña</label>
                        <input type="password" name="pass" id="pass" class="form-control" placeholder="Contraseña" required>
                    </div>
                    <div class="modal-footer">
                      <button type="submit" name="btnLog" class="form-control btn btn-outline-success"> Ingresar</button>
                    </div>
                </form>
                <button type="button" class="form-control mr-sm-2 btn-outline-secondary" data-toggle="modal" data-target="#recoverPass"> Recuperar Contraseña</button>
            </div>
        </div>
    </div>
</div> -->
<!-- Modal recuperar la contraseña -->
<!-- <div class="modal fade" id="recoverPass" tabindex="-1" role="dialog" aria-labelleby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"> Recuperar Contraseña</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="./includes/login.php" method="POST">
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label text-muted"> Correo Electronico</label>
                        <input type="mail" name="mail" id="mail" class="form-control" placeholder="Correo" required>
                    </div>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label text-muted"> Nueva Contraseña</label>
                        <input type="password" name="Newpass" id="newPass" class="form-control" placeholder="Contraseña" required>
                    </div>
                    <div class="modal-footer">
                      <hr>
                      <button type="button" class="form-control btn btn-outline-success"> Enviar</button>
                      <button type="button" class="form-control btn btn-outline-danger"> Cancelar</button>
                    </div>
                </form>
                <hr>
            </div>
        </div>
    </div>
</div> -->