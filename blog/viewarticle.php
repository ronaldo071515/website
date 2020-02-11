<?php
  error_reporting(0);

	$sql = "SELECT * FROM article";
	$sentencia = $pdo->prepare($sql);
	$sentencia->execute();

	$result = $sentencia->fetchAll();

	$a_x_p = 5;
	//contar articulos de db
	$totalArt = $sentencia->rowCount();
	$paginas = $totalArt/5;
	$paginas = ceil($paginas);/* ceil para redondear */
?>
<?php
		$iniciar = ($_GET['pagina']-1)*$a_x_p;

		$sql_articles = 'SELECT * FROM article ORDER BY fecha ASC LIMIT :iniciar,:narticulos';
		$star = $pdo->prepare($sql_articles);
		$star->bindParam(':iniciar', $iniciar, PDO::PARAM_INT);
		$star->bindParam(':narticulos',$a_x_p,PDO::PARAM_INT);
		$star->execute();

		$resultArticles = $star->fetchAll(); 
		 ?>

    	<?php foreach ($resultArticles as $articulo): ?>
    		<div class="container">
 				<h1><?php echo $articulo['title']; ?></h1>
 				<p><?php echo $articulo['fecha']; ?></p>
 				<div class="row">
 					<div class="col-md-4">
 						<img src="<?php echo "..website/".$articulo['img']?>" class="img-fluid" whidth="289.98" height="130.19">
 					</div>
 					<div class="col-md-8">
 						<p><?php echo $articulo['cuerpo']; ?></p>
 						<i><strong><?php echo $articulo['author']; ?></strong></i>
 					</div>
 				</div>
			</div>
			<hr/>
		<?php endforeach ?>
<div class="container my-2">
			<nav aria-label="Page navigation example">
  				<ul class="pagination">

    				<li class="page-item
					<?php echo $_GET['pagina'] <= 1 ? 'disabled' : '' ?>
    				">
    					<a class="page-link" href="./index.php?pagina=<?php echo $_GET['pagina']-1 ?>">Anterior
    					</a>
    				</li>



    				<?php for ($i=0; $i < $paginas ; $i++): ?>
    				<li class="page-item <?php echo $_GET['pagina']==$i+1 ? 'active' : '' ?>">
    					<a class="page-link" href="./index.php?pagina=<?php echo $i+1?>">
    					<?php echo $i+1; ?>
    					</a>
    				</li>
					<?php endfor ?>
    				<li class="page-item
					<?php echo $_GET['pagina'] >= $paginas ? 'disabled' : '' ?>
    				">
    					<a class="page-link" href="./index.php?pagina=<?php echo $_GET['pagina']+1 ?>">Siguiente
    					</a>
    				</li>
  				</ul>
</nav>
</div>