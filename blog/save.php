<?php
    include ("../conexion/conexion.php");
    error_reporting(0);
        $title = $_POST['title'];
        $description = $_POST['description'];
        $archivo = $_FILES['img']['tmp_name'];
        $imagen = "../img/".$_FILES['img']['name'];
        move_uploaded_file($archivo,$imagen);

        if (empty($title || empty($description))) {
            echo "<script>
            alert('llena los campos');
            </script>";
        }else {
            $query = "INSERT INTO article (title, author, img, cuerpo, fecha) VALUES
            ('$title', 'fuerse', '$imagen', '$description', now())";
   
           $result = mysqli_query($connection,$query);
           var_dump($result);
           if(!$result){
               die ("query fatal");
           }else{
               echo "save successfully";
               header("Location:blog.php");
           }
        }
?>