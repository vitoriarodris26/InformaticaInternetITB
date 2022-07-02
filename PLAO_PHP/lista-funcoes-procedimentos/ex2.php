<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercício 2</title>
	<style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>  
</head>
<body> 
    <h2>Exercício 2 (Cálculo das Médias)</h2>
	 <form action="?" method="get">
	<label for="">Nota 1:</label>
				<input name="nota1" id="nota1"><br> 
				<label for="">Nota 2:</label>
				<input name="nota2" id="nota2"><br>
				<label for="">Nota 3:</label> 
				<input name="nota3" id="nota3"><br> 
	
		<select name= "letra">
			<option id="A" value="A">A</option>
			<option id="P" value="P">P</option>
			<option id="H" value="H">H</option>
		</select>
		<input type="submit" value="Calcular"> 

	</form>

	
<?php
require __DIR__. "/includes/funcoes.php"; 

$letra = isset($_GET["letra"])?$_GET["letra"]:null;
$campo1 = isset($_GET["nota1"])?$_GET["nota1"]:null;
$campo2 = isset($_GET["nota2"])?$_GET["nota2"]:null;
$campo3 = isset($_GET["nota3"])?$_GET["nota3"]:null;
$resultado = calcMedias($campo1, $campo2, $campo3, $letra);
echo "<p>$resultado</p>";
?>

<hr>
<a href="index.php">Voltar</a>
</body>
</html>