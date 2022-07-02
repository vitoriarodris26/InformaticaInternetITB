<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercício 6</title>
    <style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>
</head>
<body>

    <h2>Exercício 6 (Ordem)</h2>
    <form action="?" method="get">
        <label for="">Valor 1:</label>
        <input name="V1" id="V1"><br> 
        <label for="">Valor 2:</label>
        <input name="V2" id="V2"><br>
        <label for="">Valor 3:</label> 
        <input name="V3" id="V3"><br> 
        <input type="submit" value="Calcular"> 
    </form>
<?php
require __DIR__."/includes/funcoes.php"; 

$V1 = isset($_GET["V1"])?$_GET["V1"]:null;
$V2 = isset($_GET["V2"])?$_GET["V2"]:null;
$V3 = isset($_GET["V3"])?$_GET["V3"]:null;
$v = Array($V1, $V2, $V3);
sort($v);
$vetorOrdenado = ordem($V1,$V2,$V3,$v);

#calcVolume($raio);
foreach($v AS $valor) {
	//echo "$valor<br />"; // 1 7 10 20 
	echo $vetorOrdenado[0] = $valor;
	
}
//echo $vetorOrdenado[0];

?>

<hr>
<a href="index.php">Voltar</a>
</body>
</html>
