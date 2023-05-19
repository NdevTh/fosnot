<?php
    $bdd = new PDO('mysql:host=localhost;dbname=fosnotv1;charset=utf8','root',''); 
?>

    <div class="contentT Cours">
            <div class="cours">
                <div class="cours1 Even">
                    <h2 class="titreCours">MANIFESTATION PASSEE</h2>
                    <div class="para1 Cours Even">
                        <div class="even">
                                <img class="aImg Cours Even"src="../image/galerie/concert-4768496_1920.jpg" alt="">
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
                foreach($even as $description) 
                    echo $description['eve_title'].'</br>'.$description['eve_date'].'</br></br>'.$description['eve_description'];
                    ?></br>
             <!---------- fin Partie PHP  -->                      
                       </div>
                        </div>
                        <div class="even">
                                <img class="aImg Cours Even"src="../image/galerie/concert-932098_1920.jpg" alt="">
                                <div class="para1C Cours Even">  
<!-- ----------------début php -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT eve_description, eve_title FROM `events` WHERE eve_id='2' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $even = $req->fetchAll();
                // description
                foreach($even as $description) 
                    echo $description['eve_title'].'</br></br>'.$description['eve_description'];
                    ?></br>       
<!---------- fin Partie PHP  -->                      
                </div>
                        </div>
                    </div > 
                   
                </div>       
                <div class="cours1 Even">
                    <h2 class="titreCours">MANIFESTATION A VENIR</h2>
                    <div class="para1 Cours Even">
                        <div class="even">
                                <img class="aImg Cours Even"src="../image/galerie/orchestra-2098877_1920.jpg" alt="">
                                <div class="para1C Cours Even">                         
                <!---------- début Partie PHP  -->
                <?php
                    // ----------on écrit la requête
                    $sql = "SELECT eve_description, eve_title, eve_date FROM `events` WHERE eve_id='3' ";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $even = $req->fetchAll();
                // description
                foreach($even as $description) 
                    echo $description['eve_title'].'</br></br>'.$description['eve_description'];
                    ?></br>
             <!---------- fin Partie PHP  -->                      
                                </div>
                        </div>
                        <div class="even">
                                <img class="aImg Cours Even"src="../image/galerie/fiddle-2865596_1920.jpg" alt="">
                                <div class="para1C Cours Even">                         
                                Parfait pour l’endurance et le renforcement musculaire, sans tension, ni impact. Au coeur du Courant pour l’admirer autrement. Accessible à tous, l’aqua palmes 
                                </div>
                        </div>
                    </div > 
                   
                </div>       
                      
    </div>
            <!-- ---------Equipe direction---------- -->
          
            <!-- intitulé -->  
          <!-- ---------Equipe pédago------------>
 



