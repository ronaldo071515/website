<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="../css/estilos.css">
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a3a8d3af24.js"></script>
    <title>Fundacion Fuerse</title>
    <link rel="shortcut icon" href="../img/fundacion.ico" type="image/x-icon">
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light" id="navbar">
  <a class="navbar-brand" href="#"><img src="../img/fundacion.png"  width="70" height="70" alt="logo" id="logoindex"> <b>Fundación Fuerse</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="../index.php">Inicio <span class="sr-only">(current)</span></a></li>
      <li class="nav-item"><a class="nav-link" href="../index.php#nosotros">Nosotros</a></li>
      <li class="nav-item" style="margin-left:10px"><a class="nav-link" href="../index.php#clientes"> Clientes</a></li>
      <li class="nav-item" style="margin-left:10px"><a class="nav-link" href="contac.php"> Contactanos</a>
      </li>
      <li class="nav-item" style="margin-left:10px"></li>
      <div class="dropdown">
      <a href="#" style="margin-left:15px" class="btn  dropdown-toggle"  id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mas</a><br>
      <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
      <button class="dropdown-item" type="button" onclick="window.location='servicios.php'">Productos y Servicios</button>
      <button class="dropdown-item" type="button">Aliados</button>
      <button class="dropdown-item" type="button">Acerca de</button>
    </div>
    </div>
    </ul>
  </div>
</nav>
<body class="bodycontac">
<div class="jumbotron jumbotron-fluid" id="jumbocontact">
  <div class="container">
    <h3 class="contacto text-center"><strong>Contactanos</strong></h3>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <!-- <img class="img" src="../img/qs.jpg" width="500" alt=""> -->
            </div>
            <div class="col-md-6">
                <div class="card card-body my-4">
                    <form action="">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Ingresa Tu Nombre">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Ingresa Tu Correo">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="" id="" cols="30" rows="10" placeholder="Tu mensaje aquí"></textarea>
                        </div>
                        <input type="submit" class="btn btn-outline-secondary btn-block" value="Enviar">
                    </form>
                </div>
            </div>
        </div>
    </div>
  </div>
</div>

   	<footer class="footerservice">
		<div class="social">
			<a href="" class="icon-icon-facebook"></a>
			<a href="" class="icon-icon-twitter"></a>
			<a href="" class="icon-icon-instagram"></a>
			<a href="" class="icon-icon-youtube"></a>
		</div>
		<p class="copy">&copy; Fuerse--2019 -Todos los derechos reservados</p>
	</footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>