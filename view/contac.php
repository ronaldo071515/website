<?php 
    include ("header.php");
?>
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
<?php 
    include ("footer.php");
?>