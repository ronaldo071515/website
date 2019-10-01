<?php include ("includes/header.php");?>
<?php include ("../conexion/conexion.php");?>   
    <div class="container md-4">
         <div class="row">
             <div class="col-md-4">
                <h3>Agregar Articulo</h3>
                 <div class="card card-body my-3" >
                     <form action="save.php" method="POST" enctype='multipart/form-data'>
                        <div class="form-group">
                          <input class="form-control" type="text" placeholder="Titulo" name="title">
                        </div>
                        <div class="form-group">
                          <textarea class="form-control my-2" placeholder="Descripcion" name="description"></textarea>
                        </div>
                        <div class="form-group">
                          <input class="form-control my-2" type="file" name="img">
                        </div>
                        <input type="submit" class="btn btn-outline-success btn-block" name="btnSave" value="Guardar">
                     </form>
                 </div>
             </div>
    <div class="col-md-8 my-5">
    <table class="table table-bordered">
    <thead>
        <tr>
            <th scope="col">Titulo</th>
            <th scope="col">Descripcion</th>
            <th scope="col">Fecha</th>
            <th scope="col">Acciones</th>
        </tr>
    </thead>
    <tbody>
      <?php
        $query = "SELECT * FROM article";
        $result = mysqli_query($connection, $query);
        while ($row = mysqli_fetch_array($result)) { ?>
            <tr>
              <td><?php echo $row['title']?></td>
              <td><?php echo $row['author']?></td>
              <td><?php echo $row['fecha']?></td>
              <td>
              <a href="edit.php?id=<?php echo $row['id']?>" class="btn btn-outline-success">EDITAR</a>
              <a href="" class="btn btn-outline-danger">ELIMINAR</a>
            </td>
            </tr>
        <?php }
      ?>
    </tbody>
    </table>
        
    </div>
         </div>
    </div>
<?php include ("includes/footer.php");?>