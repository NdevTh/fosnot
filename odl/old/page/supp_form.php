<?php
   $bdd = new PDO('mysql:host=localhost;dbname=fosnotv1','root','');
    //Requet
$req = "DELETE FROM`data` WHERE  id_data=$_GET[id_act]"; 
$bdd ->query($req);
unset($_POST);
?>