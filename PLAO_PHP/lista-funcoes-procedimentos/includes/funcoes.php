<?php

// Exercício 1(Procedimento)
function calcVolume($raio)
{
    $Volume = 4/3*3.1415*($raio**3);
    //echo $raio;
    echo "<p>O valor do volume é" .number_format($Volume,2,",",",")."</p>";
}


// Exercício 2 (Função) 
/*function opcaoA($campo1, $campo2, $campo3)
{
	$campo4 = ($campo1 + $campo2 + $campo3)/3;
	echo $campo4;	
}
function opcaoP($campo1p, $campo2p, $campo3p)
{
	$campo4p = (($campo1p * 5) + ($campo2p * 3) + ($campo3p * 2))/(5 + 3 + 2);
	echo $campo4p;	
}
function opcaoH($campo1h, $campo2h, $campo3h)
{
	$campo4h = 3/ (1/$campo1h) + (1/$campo2h) + (1/$campo3h);
	echo $campo4h;	
}*/


function calcMedias($campo1, $campo2, $campo3, $letra)
{
	switch($letra){
		case "A":
		$resultado = ($campo1 + $campo2 + $campo3)/3;
		return $resultado;
		break;
		case "H":
		$resultado = 3/ (1/$campo1) + (1/$campo2) + (1/$campo3);
		return $resultado;
		break;
		case "P":		
		$resultado = (($campo1 * 5) + ($campo2 * 3) + ($campo3 * 2))/(5 + 3 + 2);
		return $resultado;
		break;
		
	}
	
	//return $resultado;
}
// Exercício 3 (Função)
function calcBaskara($a, $b, $c){
	$x = ($b*$b)-4*$a*$c;
	return $x;	
}
function resul1($a, $b, $x){
	$result1 = (-$b + sqrt($x))/(2*$a);
	return $result1;
}
function resul2($a, $b, $x){
	$result2 = (-$b - sqrt($x))/(2*$a);
	return $result2;
}
// Exercício 4 (Função)
function calcDivi($a){
	for($i=1;$i<=$a;$i++){
		$div = $a % $i;
		if($div == 0){
			$soma= $soma = 1;
			return "$a<br>";
		}	
	}
}






// Exercício 5 (Função)


// Exercício 6()
function ordem($V1,$V2,$V3,$v){
foreach($v AS $valor) {
	//echo "$valor<br />"; // 1 7 10 20 
	$vetorOrdenado[] = $valor;
	
}

return $vetorOrdenado;
}

// Exercícios 7()

function NumMinMax(){
	
	$numerosAlea = array();
	for($i=0; $i< 50;$i++){
		$numerosAlea[] = rand(1,50);
	}
	
	$numerosAlea[] = max($numerosAlea);
	$numerosAlea[] = min($numerosAlea);
	//echo max($numerosAlea);
	//echo min($numerosAlea);


	return $numerosAlea;
}

// Exercícios 8()
function primo($V1){
$i = 1;
$primo = 0;
while ($i <= $V1){
	if ($V1 % $i == 0){
		$primo ++;
	}
	$i++;
}
if($primo == 2) {
	echo "É primo";
} else {
	echo "Não é primo";
}
}