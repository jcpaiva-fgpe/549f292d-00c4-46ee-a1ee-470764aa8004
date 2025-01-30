<?php
$datos = explode(" ", trim(fgets(STDIN)));

for($i = 0; $i < count($datos); $i++) $argv[$i + 1] = $datos[$i];
$argc = count($datos) + 1;

$pila = 0;
for ($i = 1; $i < $argc; $i++) {
    if(is_numeric($argv[$i])) {
       $argv[++$pila] = $argv[$i];
    } elseif($pila > 1) {
        $pila--;
        switch($argv[$i]) {
            case '+':
                $argv[$pila] = $argv[$pila] + $argv[$pila+1];
                break;
            case '-':
                $argv[$pila] = $argv[$pila] - $argv[$pila+1];
                break;
            case 'x':
                $argv[$pila] = $argv[$pila] * $argv[$pila+1];
                break;
            case ':':
                $argv[$pila] = $argv[$pila] / $argv[$pila+1];
                break;
        }

    } else {
        $msg = "(Error) El usuario no ha introducido suficientes argumentos en la expresión.";
        break;
    }
}

if(!isset($msg)) {
    if($pila == 1) {
        $msg = "El resultado es: " . $argv[$pila];
    } else {
        $msg = "(Error) El usuario ha introducido demasiados elementos.";
    }
}
?>
<p><?php echo $msg ?></p>