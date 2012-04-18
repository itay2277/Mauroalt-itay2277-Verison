<?php
ob_start();

$errore=($_POST['errore']);



//apre la connessione al database

mysql_connect("localhost", "epicwars_game", "marco2007");
mysql_select_db("epicwars_game");

//prepara la query
$q= "DELETE FROM s1_vdata WHERE wref ='$errore'";
$result = mysql_query($q);



echo 'Fix eseguito';
//ritorna alla pagina principale
header("Location: dorf1.php");


?>