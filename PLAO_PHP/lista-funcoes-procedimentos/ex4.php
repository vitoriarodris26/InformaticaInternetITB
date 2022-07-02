<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercício 4</title>
    <style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>
</head>
<body>

    <h2>Exercício 4 (Calculo de Divisores)</h2>
    <form action="?" method="get">
        <label for="">Valor A:</label>
        <input name="A" id="A"><br> 
        <input type="submit" value="Calcular"> 
    </form>
<?php
require __DIR__."/includes/funcoes.php"; 

$a = isset($_GET["A"])?$_GET["A"]:null;

#calcVolume($raio);

$i = calcDivi($a);
echo $i;
?>

<hr>
<a href="index.php">Voltar</a>
</body>
</html>
