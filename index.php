<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Formulario para saber que tanto sabes de cucuta</title>
	<link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>

	<div class="contenedor" action="insert.php" method="POST">
		<section>
		<form class="form">
			<label for="">Nombre: </label>
				<input type="text" id="nombre">
			<label for="">Apellidos: </label>
				<input type="text">
			<label for="">Edad: </label>
				<input type="number">
			<label for="">Comida favorita: </label>
				<input type="text">
			<label for="">Deporte Favorito: </label>
				<input type="text">
			<label for="">Clase Social: </label>
				<input type="text">
			<label for="">Religion: </label>
				<input type="text">
			<label for="">Temperamento: </label>
			<select>	
				<option value="">Alegre</option>
				<option value="">Tímido</option>
				<option value="">Enérgico</option>
				<option value="">Sensible</option>
			</select>
			<label for="">Caracter: </label>
			<select id="">
				<option value="">Nervioso</option>
				<option value="">Apasionado</option>
				<option value="">Colérico</option>
				<option value="">Sentimental</option>
				<option value="">Sanguíneo</option>
				<option value="">Flématico</option>
				<option value="">Amorfo</option>
				<option value="">Apático</option>
			</select>
			<label for="">Sexo</label>
			<select>
				<option>Prefiero no decirlo</option>
				<option value="">Masculino</option>
				<option value="">Femenino</option>
			</select>
			<button type="submit">Enviar</button>
		</form>
		</section>
	</div>
</body>
</html>