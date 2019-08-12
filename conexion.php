<?php
	
	$user = 'root';
	$pass = '';
	try {
		
		$conexion = new PDO('mysql:host=localhost;dbname=data', $user,$pass);

		if (!$conexion) {
			echo "<script>
				alert('Error Al Conectar');
			</script>";
		}else {
			echo "<script>
				alert('Conectado');
			</script>";
		}
		foreach ($conexion->query('SELECT * FROM datas') as $fila) {
			print_r($fila[9]);
			if ($fila[9] == $fila[9] ) {
				echo "";
			}
		}
	} catch (Exception $e) {
		print "!Error¡: ". $e->getMessage(). "<br/>";
		die();
	}
?>