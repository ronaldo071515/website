<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Formulario</title>
  </head>
  <body>
    <nav class ="navbar navbar-dark bg-dark">
        <div class="continer">
            <a href="blog.php" class="navbar-brand">FUNDACION FUERSE</a>
        </div>
    <form action="">
        <input type="submit" class="btn btn-primary" value="Salir">
    </form>
    </nav>
    
    <div class="container md-4">
         <div class="row">
             <div class="col-md-4">
                <h3>Agregar Articulo</h3>
                 <div class="card card-body my-3" >
                     <form action="">
                        <div class="form-group">
                        <input class="form-control" type="text" placeholder="Titulo">
                         </div>
                         <div class="form-group">
                        <textarea class="form-control my-2" placeholder="Descripcion"></textarea>
                         </div>
                <div class="form-group">
                <input class="form-control my-2" type="file">
                </div>
                <input type="submit" class="btn btn-outline-success btn-block" value="Guardar">
                     </form>
                 </div>
             </div>
    <div class="col-md-8 my-5">
    <table class="table">
    <thead>
        <tr>
            <th scope="col">Titulo</th>
            <th scope="col">Descripcion</th>
            <th scope="col">Fecha</th>
            <th scope="col">Acciones</th>
        </tr>
    </thead>
    <tbody>
        <tr>
      <th scope="row">1</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    </tbody>
    </table>
        
    </div>
         </div>
    </div>
    
    
   
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>