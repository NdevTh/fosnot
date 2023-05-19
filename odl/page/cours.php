<?php
$bdd = new PDO('mysql:host=localhost;dbname=fosnotv1;charset=utf8', 'root', '');
?>

<div class="contentT Cours">
    <div class="cours">
        <div class="cours1">
            <h2 class="titreCours">
                <!---------- début Partie PHP  -->
                <?php
                // ----------on écrit la requête
                $sql = "SELECT `edu_title` FROM `education` WHERE edu_id='1' ";
                // On exécute la requête 
                $req = $bdd->query($sql);
                // On récupère les données
                $educ = $req->fetchAll();
                // description
                foreach ($educ as $description)
                    echo $description["edu_title"];
                ?>
                <!---------- fin Partie PHP  -->
            </h2>
            <div class="para1 Cours">
                <img class="aImg Cours" src="./image/5-7 ans.png" alt="">

                <div class="para1C Cours">
                    <!---------- début Partie PHP  -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT `edu_description` FROM `education` WHERE edu_id='1' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $educ = $req->fetchAll();
                    // description
                    foreach ($educ as $description)
                        echo $description["edu_description"];
                    ?>
                    <!---------- fin Partie PHP  -->
                    <div>
                        </br>
                        <!-------------début ca m'interesse ----------------->
                        <button class="vali" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Ca m'intéresse</button>
                        <div id="id01" class="modal">
                            <form class="modal-content animate" action="/action_page.php" method="post">
                                <div class="imgcontainer">
                                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                </div>

                                <div class="formul">
                                    <input type="text" placeholder="Formule 1" name="login" required>
                                    <input type="text" placeholder="Forfait annuel" name="psw" required>
                                    <input type="text" placeholder="
               160 €" name="psw" required>
                                    <button type="submit"><a href="image/documentInscription.pdf" alt="pdf" target="_blank">Télecharger le PDF</a></button>
                                </div>
                            </form>
                        </div>
                        <!------------- fin ca m'interesse ----------------->
                        <!-- <input class="vali" name="send" type="button" value="ca m'interesse !"> -->
                    </div>
                </div>
            </div>
        </div>
        <!------début Cours de solfège 7-8 ans -->
        <div class="cours2">
            <h2 class="titreCours"> <?php
                                    // ----------on écrit la requête
                                    $sql = "SELECT `edu_title` FROM `education` WHERE edu_id='2' ";
                                    // On exécute la requête 
                                    $req = $bdd->query($sql);
                                    // On récupère les données
                                    $educ = $req->fetchAll();
                                    // description
                                    foreach ($educ as $description)
                                        echo $description["edu_title"];
                                    ?></h2>
            <div class="para1 Cours">
                <img class="aImg Cours" src="./image/7-8 ans.png" alt="">
                <div class="para1C Cours">
                    <!---------- début Partie PHP  -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT `edu_description` FROM `education` WHERE edu_id='2' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $educ = $req->fetchAll();
                    // description
                    foreach ($educ as $description)
                        echo $description["edu_description"];
                    ?></br>
                    <!---------- fin Partie PHP  -->
                    <!-------------début ca m'interesse ----------------->
                    <button class="vali" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Ca m'intéresse</button>
                    <div id="id01" class="modal">
                        <form class="modal-content animate" action="/action_page.php" method="post">
                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                            </div>

                            <div class="formul">
                                <input type="text" placeholder="Formule 2" name="login" required>
                                <input type="text" placeholder="Forfait annuel" name="psw" required>
                                <input type="text" placeholder="               
                180 €" name="psw" required>
                                <button type="submit"><a href="image/documentInscription.pdf" alt="pdf" target="_blank">Télecharger le PDF</a></button>
                            </div>
                        </form>
                    </div>
                    <!------------- fin ca m'interesse ----------------->
                </div>
            </div>
            <!------fin Cours de solfège 7-8 ans -->
        </div>
    </div>
    <div class="contentT Cours">
        <div class="cours">
            <div class="cours1">
                <h2 class="titreCours"> <?php
                                        // ----------on écrit la requête
                                        $sql = "SELECT `edu_title` FROM `education` WHERE edu_id='3' ";
                                        // On exécute la requête 
                                        $req = $bdd->query($sql);
                                        // On récupère les données
                                        $educ = $req->fetchAll();
                                        // description
                                        foreach ($educ as $description)
                                            echo $description["edu_title"];
                                        ?></h2>
                <div class="para1 Cours">
                    <img class="aImg Cours" src="./image/Classe Orchestre.png" alt="">
                    <div class="para1C Cours">
                        <!---------- début Partie PHP  -->
                        <?php
                        // ----------on écrit la requête
                        $sql = "SELECT `edu_description` FROM `education` WHERE edu_id='3' ";
                        // On exécute la requête 
                        $req = $bdd->query($sql);
                        // On récupère les données
                        $educ = $req->fetchAll();
                        // description
                        foreach ($educ as $description)
                            echo $description["edu_description"];
                        ?></br>
                        <!---------- fin Partie PHP  -->
                        <!-------------début ca m'interesse ----------------->
                        <button class="vali" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Ca m'intéresse</button>
                        <div id="id01" class="modal">
                            <form class="modal-content animate" action="/action_page.php" method="post">
                                <div class="imgcontainer">
                                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                </div>

                                <div class="formul">
                                    <input type="text" placeholder="Formule 3" name="login" required>
                                    <input type="text" placeholder="Forfait annuel" name="psw" required>
                                    <input type="text" placeholder="170 €" name="psw" required>
                                    <button type="submit"><a href="image/documentInscription.pdf" alt="pdf" target="_blank">Télecharger le PDF</a></button>
                                </div>
                            </form>
                        </div>
                        <!------------- fin ca m'interesse ----------------->
                    </div>
                </div>
            </div>
            <div class="cours2">
                <h2 class="titreCours"> <?php
                                        // ----------on écrit la requête
                                        $sql = "SELECT `edu_title` FROM `education` WHERE edu_id='4' ";
                                        // On exécute la requête 
                                        $req = $bdd->query($sql);
                                        // On récupère les données
                                        $educ = $req->fetchAll();
                                        // description
                                        foreach ($educ as $description)
                                            echo $description["edu_title"];
                                        ?></h2>
                <div class="para1 Cours">
                    <img class="aImg Cours" src="./image/coursAdulte.png" alt="">
                    <div class="para1C Cours">
                        <!---------- début Partie PHP  -->
                        <?php
                        // ----------on écrit la requête
                        $sql = "SELECT `edu_description` FROM `education` WHERE edu_id='4' ";
                        // On exécute la requête 
                        $req = $bdd->query($sql);
                        // On récupère les données
                        $educ = $req->fetchAll();
                        // description
                        foreach ($educ as $description)
                            echo $description["edu_description"];
                        ?></br>
                        <!---------- fin Partie PHP  --> <!-------------début ca m'interesse ----------------->
                        <button class="vali" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Ca m'intéresse</button>
                        <div id="id01" class="modal">
                            <form class="modal-content animate" action="/action_page.php" method="post">
                                <div class="imgcontainer">
                                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                </div>

                                <div class="formul">
                                    <input type="text" placeholder="Formule 4" name="login" required>
                                    <input type="text" placeholder="Forfait annuel" name="psw" required>
                                    <input type="text" placeholder="160 €" name="psw" required>
                                    <button type="submit"><a href="image/documentInscription.pdf" alt="pdf" target="_blank">Télecharger le PDF</a></button>
                                </div>
                            </form>
                        </div>
                        <!------------- fin ca m'interesse ----------------->
                    </div>
                </div>

            </div>
        </div>
        <div class="contentT Cours">
            <div class="cours">
                <div class="cours1">
                    <h2 class="titreCours"> <?php
                                            // ----------on écrit la requête
                                            $sql = "SELECT `edu_title` FROM `education` WHERE edu_id='5' ";
                                            // On exécute la requête 
                                            $req = $bdd->query($sql);
                                            // On récupère les données
                                            $educ = $req->fetchAll();
                                            // description
                                            foreach ($educ as $description)
                                                echo $description["edu_title"];
                                            ?></h2>
                    <div class="para1 Cours">
                        <img class="aImg Cours" src="./image/galerie/pratiqueInstrument.jpg" alt="">
                        <div class="para1C Cours">
                            <!---------- début Partie PHP  -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `edu_description` FROM `education` WHERE edu_id='2' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                            // description
                            foreach ($educ as $description)
                                echo $description["edu_description"];
                            ?></br>
                            <!---------- fin Partie PHP  -->
                            <!-------------début ca m'interesse ----------------->
                            <button class="vali" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Ca m'intéresse</button>
                            <div id="id01" class="modal">
                                <form class="modal-content animate" action="/action_page.php" method="post">
                                    <div class="imgcontainer">
                                        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                                    </div>

                                    <div class="formul">
                                        <input type="text" placeholder="Formule 5" name="login" required>
                                        <input type="text" placeholder="Forfait annuel" name="psw" required>
                                        <input type="text" placeholder="160 €" name="psw" required>
                                        <button type="submit"><a href="image/documentInscription.pdf" alt="pdf" target="_blank">Télecharger le PDF</a></button>
                                    </div>
                                </form>
                            </div>
                            <!------------- fin ca m'interesse ----------------->
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!-- ---------Equipe direction---------- -->

        <!-- intitulé -->
        <!-- ---------Equipe pédago------------>