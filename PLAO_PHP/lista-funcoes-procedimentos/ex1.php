<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset-"UTF-8">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style type= "text/css"> 
    body {
        background-color:#f2b1e4;
    } 
    </style>
</head>
<body>
        <h2>Exercicio 1 (calculo do volume de uma Esfera)</h2>
        <form action="?" method="get>">
        <label for="">Digite o raio da esfera;</label>
            <input type="text" name="raio" id="raio">
            <input type="submit" value="Volume">
        </form>
<?php

// __DIR__ : Representa o endereço absoluto do referido diretório a partir do servidor 

// echo __DIR__; // /lista-funcoes-procedimentos/includes/ex1.php

// require : Exige a inclusão do arquivo. se houver falha na inclusão será gerado um "fatal erro
//isset() : verifica a existencia de um valor para uma determinada variavel
require __DIR__. "/includes/funcoes.php";

$raio = isset($_GET["raio"])?$_GET["raio"]:null;

calcVolume($raio);

?>

<hr>
<a href="index.php">voltar</a>
</body>
</html>

<?php

  

