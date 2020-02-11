<?php
    include ("../conexion/conexion.php");
    include ("sesion.php");
    if($_GET['id']){
        $id = $_GET['id'];
        $query = "DELETE FROM article WHERE id=$id";
        $resul = mysqli_query($connection,$query);
        if (!$resul) {
            die ("<script>
            alert('Ocurrio un error al eliminar');
            </script>");
        }else{
            echo "<script>
            alert('Article delete successfully');
            </script>";
            header("Location:blog.php");
        }
    } else {
        header("Location:../index.php");
    }
?>