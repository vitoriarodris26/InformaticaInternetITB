<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exercício 8</title>
    <style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>
</head>
<body>

    <h2>Exercício 8 (Numero primo)</h2>
    <form action="?" method="get">
        <label for="">Valor 1:</label>
        <input name="V1" id="V1"><br> 
        <input type="submit" value="Calcular"> 
    </form>
<?php
require __DIR__."/inclu                                 des/funcoes.php"; 

$V1 = isset($_GET["V1"])?$_GET["V1"]:null;

primo($V1);

#calcVolume($raio);

//echo $vetorOrdenado[0];

?>

<hr>
<a href="index.php">Voltar</a>
</body>
</html>