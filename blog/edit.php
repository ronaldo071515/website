
<?php 
    include ("../conexion/conexion.php");
    include ("includes/header.php");
?>
<?php
    error_reporting(0);
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        $query = "SELECT * FROM article WHERE id=$id";
        $result = mysqli_query($connection, $query);
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_array($result);
            $title = $row['title'];
            $cuerpo = $row['cuerpo'];
        }    
    }
    if (isset($_POST['btnUpdate'])){
        $title  = $_POST['title'];
        $archivo = $_FILES['img']['tmp_name'];
        $imagen = "../img/".$_FILES['img']['name'];
        move_uploaded_file($archivo,$imagen);
        $cuerpo = $_POST['cuerpo'];

        $query = "UPDATE article SET title='$title', img='$imagen', cuerpo='$cuerpo' WHERE id=$id";
        
        $result = mysqli_query($connection, $query);
        if (!$result) {
            die ("<script>
            alert('Ha Ocurrido un error al actualizar los datos');
            </script>");
        }else{
            echo "<script>
            alert('Actualizado satisfactoriamente');
            window.location='blog.php';
            </script>";
        }
    }
?>
<div class="container my-5">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card card-body">
                <form action="edit.php?id=<?php echo $_GET['id']?>" method="POST" enctype='multipart/form-data' name="formblog">
                <div class="form-group">
                    <input type="text" class="form-control" name="title" value="<?php echo $title;?>">
                </div>
                <div class="form-group">
                    <input type="file" class="form-control" name="img" required>
                </div>
                <div class="form-group">
                    <textarea name="cuerpo" class="form-control" cols="30" rows="10"><?php echo $cuerpo;?></textarea>
                </div>
                <input class='btn btn-outline-primary' name='btnUpdate' type='submit' value="Actualizar Articulo">
                </form>
            </div>
        </div>
    </div>
</div>
<?php include ("includes/footer.php");?>