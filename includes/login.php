<?php
    include ("../conexion/conexion.php");
    $user = $_POST['user'];
    $password = $_POST['pass'];

    if (empty($user) || empty($password)) {
        echo "<script>
        alert('Uno de los campos esta vacio');
        </script>";
    }else {
        if (isset($_POST['btnLog'])) {
            $query = "SELECT nameU, password FROM usuario
            WHERE nameU='$user' AND password='$password'";
            $resul = $connection->query($query);
            $filas = $resul->fetch_row();
            if ($filas[0] == $user && $filas[1] == $password) {
                session_start();
                $_SESSION['usuario'] = $user;
                header("Location:../blog/blog.php");
            }else{
                echo "<script>
                alert('Usuario o Clave Incorrectos');
                window.location = '../index.php';
                </script>";
            }
        }
    }
?>