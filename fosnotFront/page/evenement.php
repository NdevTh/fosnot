<?php
$bdd = new PDO('mysql:host=localhost;dbname=fosnotv1;charset=utf8', 'root', '');
?>

<div class="contentT Cours">
    <div class="cours">
        <div class="cours1 Even">
            <h2 class="titreCours">MANIFESTATION PASSEE</h2>
            <div class="para1 Cours Even">
                <div class="even">
                    <!-- <img class="aImg Cours Even"src="../image/galerie/evenPass01.jpg" alt=""> -->
                    <!-- debut php image -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT `eve_directory` FROM `events` WHERE eve_id='1' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $educ = $req->fetchAll();
                    // description
                    foreach ($educ as $description)
                        echo '<img class="aImg Cours Even"src="./image/galerie/' . $description['eve_directory'] . '" alt="">';
                    ?>
                    <!-- fin php image -->

                    <div class="para1C Cours Even">
                        <!---------- début Partie PHP  -->
                        <?php
                        // ----------on écrit la requête
                        $sql = "SELECT eve_description, eve_title, eve_date FROM `events` WHERE eve_id='1' ";
                        // On exécute la requête 
                        $req = $bdd->query($sql);
                        // On récupère les données
                        $even = $req->fetchAll();
                        // description
                        foreach ($even as $description)
                            echo $description['eve_title'] . '</br>' . $description['eve_date'] . '</br></br>' . $description['eve_description'];
                        ?></br>
                        <!---------- fin Partie PHP  -->
                    </div>
                </div>
                <div class="even">
                    <!-- <img class="aImg Cours Even"src="../image/galerie/evenPass02.jpg" alt=""> -->
                    <!-- debut php image -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT `eve_directory` FROM `events` WHERE eve_id='2' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $educ = $req->fetchAll();
                    // description
                    foreach ($educ as $description)
                        echo '<img class="aImg Cours Even"src="./image/galerie/' . $description['eve_directory'] . '" alt="">';
                    ?>
                    <!-- fin php image -->
                    <div class="para1C Cours Even">
                        <!---------- début Partie PHP  -->
                        <?php
                        // ----------on écrit la requête
                        $sql = "SELECT eve_description, eve_title, eve_date FROM `events` WHERE eve_id='2' ";
                        // On exécute la requête 
                        $req = $bdd->query($sql);
                        // On récupère les données
                        $even = $req->fetchAll();
                        // description
                        foreach ($even as $description)
                            echo $description['eve_title'] . '</br>' . $description['eve_date'] . '</br></br>' . $description['eve_description'];
                        ?></br>
                        <!---------- fin Partie PHP  -->
                    </div>
                </div>
            </div>

        </div>
        <div class="cours1 Even">
            <h2 class="titreCours">MANIFESTATION A VENIR</h2>
            <div class="para1 Cours Even">
                <div class="even">
                    <!-- <img class="aImg Cours Even"src="../image/galerie/evenFutur01.jpg" alt=""> -->
                    <!-- debut php image -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT `eve_directory` FROM `events` WHERE eve_id='8' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $educ = $req->fetchAll();
                    // description
                    foreach ($educ as $description)
                        echo '<img class="aImg Cours Even"src="./image/galerie/' . $description['eve_directory'] . '" alt="">';
                    ?>
                    <!-- fin php image -->
                    <div class="para1C Cours Even">
                        <!---------- début Partie PHP  -->
                        <?php
                        // ----------on écrit la requête
                        $sql = "SELECT eve_description, eve_title, eve_date FROM `events` WHERE eve_id='10' ";
                        // On exécute la requête 
                        $req = $bdd->query($sql);
                        // On récupère les données
                        $even = $req->fetchAll();
                        // description
                        foreach ($even as $description)
                            echo $description['eve_title'] . '</br>' . $description['eve_date'] . '</br></br>' . $description['eve_description'];
                        ?></br>
                        <!---------- fin Partie PHP  -->
                    </div>
                </div>
                <div class="even">
                    <!-- <img class="aImg Cours Even"src="../image/galerie/evenFutur02.jpg" alt=""> -->
                    <!-- debut php image -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT `eve_directory` FROM `events` WHERE eve_id='9' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $educ = $req->fetchAll();
                    // description
                    foreach ($educ as $description)
                        echo '<img class="aImg Cours Even"src="./image/galerie/' . $description['eve_directory'] . '" alt="">';
                    ?>
                    <!-- fin php image -->
                    <div class="para1C Cours Even">
                        <!---------- début Partie PHP  -->
                        <?php
                        // ----------on écrit la requête
                        $sql = "SELECT eve_description, eve_title, eve_date FROM `events` WHERE eve_id='11' ";
                        // On exécute la requête 
                        $req = $bdd->query($sql);
                        // On récupère les données
                        $even = $req->fetchAll();
                        // description
                        foreach ($even as $description)
                            echo $description['eve_title'] . '</br>' . $description['eve_date'] . '</br></br>' . $description['eve_description'];
                        ?></br>
                        <!---------- fin Partie PHP  -->
                    </div>
                </div>
            </div>

        </div>

    </div>
    <!-- ---------Equipe direction---------- -->

    <!-- intitulé -->
    <!-- ---------Equipe pédago------------>