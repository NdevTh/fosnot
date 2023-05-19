
<form class="login"action="" method="post">
    dateDescription : <input type ="texte" name="dateDescription"></br>
    titre : <input type ="texte" name="titre"></br>
    description : <input type ="texte" name="description"></br>
    images : <input type ="file" name="images"></br>
    <input type="submit" name="creat" value ="enregistrer">
</form>


<?php
    //verification que ca focntion, on stock que sur la machine les variables
 

    // pour afficher les saisis, les variables sont tjs sur ma machine
    // echo($_POST['duree']);
    // echo($_POST['distance']);
    // echo($_POST['denivele']);

    // on va envoyer les données
    if (isset($_POST['creat'])){
        // connection BDD
        $bdd = new PDO('mysql:host=localhost;dbname=fosnotv1','root','');
        // requetp
        //Pour vérifier on utilise l'echo, puis on copie la requet qui se trouve dans l'index et puis on les reproduits sur phpmyadmin onglet sql
        //echo $req = "INSERT INTO `data`(`duree`,`distance`,`denivele`,`id_licencie`,`id_type_act`,`date_start`)
        $req = "INSERT INTO `manifestation`(`idManif`,`dateDescription`,`titre`,`description`,`images`) 
        VALUES (".$_POST['idManif'].",".$_POST['dateDescription'].",".$_POST['titre'].",".$_POST['description'].",".$_POST['images'].")";
        $bdd ->query($req);
    
        var_dump($_POST['duree']);
        $duree = $_POST['duree'];
        $distance = $_POST['distance'];
        $denivele = $_POST['denivele'];
    }
?>