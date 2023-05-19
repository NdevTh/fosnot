<?php
    $bdd = new PDO('mysql:host=localhost;dbname=fosnotv1;charset=utf8','root',''); 
?>

            
            <div class="contentT">
                <div class="para1">
                <img class="aImg"src="../image/galerie/music-5361245_1920.jpg" alt="">
                
                </div >
                <div class="para2 aPara">
                    <p class="" >
                    <h3>Présentation</h3><br/><br/>
                <!---------- début Partie PHP  -->
                    <?php
                    // ----------on écrit la requête
                    $sql = "SELECT * FROM `organisation` ORDER BY `org_description` DESC";
                    // On exécute la requête 
                    $req = $bdd->query($sql);
                    // On récupère les données
                    $orga = $req->fetchAll();
                // description
                foreach($orga as $description) 
                    echo $description["org_description"];
                    ?>
             <!---------- fin Partie PHP  -->

                    </p>
                </div>
            </div>
            <!-- ---------Equipe direction---------- -->
            <h2>Notre équipe</h2>
            <div class="contentT2">
                    <div class="imgManag">
                        <div class="direction1">
                            <!-- <img class="imgMana"src="../image/presidente.jpg" alt=""> -->
                            <!-----------------début changer l'image à partie de la base -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_picture` FROM `managment` WHERE man_id='1' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/'.$description['man_picture'].'" alt="">';
                            ?>
                            <!-----------------fin changer l'image à partie de la base -->
                            
                            <!-- <img class="imgMana"src="../image/directrice.jpg" alt="">   -->
                            <!-----------------début changer l'image à partie de la base -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_picture` FROM `managment` WHERE man_id='3' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/'.$description['man_picture'].'" alt="">';
                            ?>
                            <!-----------------fin changer l'image à partie de la base -->                        </div>
                    </div>
                        <div class="direction2">
                            <!-- <img class="imgMana"src="../image/tresorier.jpg" alt=""> -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_picture` FROM `managment` WHERE man_id='2' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/'.$description['man_picture'].'" alt="">';
                            ?>
                            <!-- <img class="imgMana"src="../image/vicePresident.jpg" alt=""> -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_picture` FROM `managment` WHERE man_id='4' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/'.$description['man_picture'].'" alt="">';
                            ?>
                        </div>
            </div>
            <!-- intitulé -->
            <div class="contentT2">
                    <div class="imgManag">
                        <div class="legende">
                           <div >                
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_position` FROM `managment` WHERE man_id='1' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo $description["man_position"]." :";
                            ?> 
<!-------------------------début  nom - prénom -->
                               <?php
                                // ----------on écrit la requête
                                $sql = "SELECT man_lname, man_fname, man_description FROM `managment` WHERE man_id='1' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['man_lname'].'</br>'.$description['man_fname'].'</br></br>';
                                ?>
                                </br> 
<!-------------------------fin  nom - prénom -->
                            </div> 
                           <div ><?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_position` FROM `managment` WHERE man_id='3' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo $description["man_position"]." : ";
                            ?> 
<!-------------------------début  nom - prénom -->
                                <?php
                                // ----------on écrit la requête
                                $sql = "SELECT man_lname, man_fname, man_description FROM `managment` WHERE man_id='3' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['man_lname'].'</br>'.$description['man_fname'].'</br></br>';
                                ?>
                                </br> 
<!-------------------------fin  nom - prénom -->                      
                              </div> 
                                     
                        </div>
                    </div>
                    <div class="legende">
                        <div >
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_position` FROM `managment` WHERE man_id='2' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                            foreach($educ as $description) 
                            echo $description["man_position"]." : ";
                            ?> 
<!-------------------------début  nom - prénom -->
                                <?php
                                // ----------on écrit la requête
                                $sql = "SELECT man_lname, man_fname, man_description FROM `managment` WHERE man_id='2' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['man_lname'].'</br>'.$description['man_fname'].'</br></br>';
                                ?>
                                </br> 
<!-------------------------fin  nom - prénom -->
                            </div> 
                        <div >
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `man_position` FROM `managment` WHERE man_id='4' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                            foreach($educ as $description) 
                            echo $description["man_position"]." : ";
                            ?> 
<!-------------------------début  nom - prénom -->
                                <?php
                                // ----------on écrit la requête
                                $sql = "SELECT man_lname, man_fname, man_description FROM `managment` WHERE man_id='4' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['man_lname'].'</br>'.$description['man_fname'].'</br></br>';
                                ?>
                                </br> 
<!-------------------------fin  nom - prénom -->
                            </div> 
                    </div>
            </div>
            <!-- intitulé -->


            <!-- ---------Equipe pédago------------>
 <h2>Notre pédagogique</h2>
            <div class="contentT2">
                    <div class="imgManag">
                        <div class="direction1">
                            <!-- <img class="imgMana"src="../image/galerie/professeur1.jpg" alt=""> -->
                            <!-----------------début changer l'image à partie de la base -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='1' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>
                        <!-- <img class="imgMana"src="../image/galerie/professeur2.jpg" alt="">  -->
                        <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='2' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>                        </div>
                    </div>
                        <div class="direction2">
                             <!-- <img class="imgMana"src="../image/galerie/professeur3.jpg" alt=""> -->
                             <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='3' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>
                            <!-- <img class="imgMana"src="../image/galerie/professeur4.jpg" alt="">  -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='4' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>
                        </div>
            </div>
           <!-- intitulé -->
            <div class="contentT2">
                    <div class="imgManag">
                        <div class="legende Prof">
                            <div >Professeur 1</br>
                                <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='1' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br> 
                            </div> 
                            <div >Professeur 2</br>
                            <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='2' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br>                             
                            </div> 
                        </div>
                    </div>
                    <div class="legende Prof">
                        <div >Professeur 3</br>
                        <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='3' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br> 
                        </div> 
                        <div >Professeur 4</br>
                        <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='4' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br> 
                        </div> 
                    </div>
            </div>     
            <!-- intitulé -->  
            <div class="contentT2">
                    <div class="imgManag">
                        <div class="direction1">
                            <!-- <img class="imgMana"src="../image/galerie/professeur5.jpg" alt=""> -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='5' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>
                            <!-- <img class="imgMana"src="../image/galerie/professeur6.jpg" alt="">   -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='6' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>              
                        </div>
                    </div>
                        <div class="direction2">
                            <!-- <img class="imgMana"src="../image/galerie/professeur7.jpg" alt=""> -->
                            <?php
                            // ----------on écrit la requête
                            $sql = "SELECT `tea_picture` FROM `teachers` WHERE tea_id='7' ";
                            // On exécute la requête 
                            $req = $bdd->query($sql);
                            // On récupère les données
                            $educ = $req->fetchAll();
                        // description
                            foreach($educ as $description) 
                            echo '<img class="imgMana"src="../image/galerie/'.$description['tea_picture'].'" alt="">';
                            ?>
                            <img class="imgManaV"src="" alt="">
                        </div>
            </div>
           <!-- intitulé -->
            <div class="contentT2">
                    <div class="imgManag">
                        <div class="legende Prof">
                            <div >Professeur 5</br>
                            <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='5' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br> 
                            </div> 
                            <div >Professeur 6</br>
                            <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='6' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br> 
                            </div> 
                        </div>
                    </div>
                    <div class="legende Prof">
                        <div >Professeur 7</br>
                        <?php
                                // ----------on écrit la requête
                                $sql = "SELECT tea_lname, tea_fname, tea_description FROM `teachers` WHERE tea_id='7' ";
                                // On exécute la requête 
                                $req = $bdd->query($sql);
                                // On récupère les données
                                $tea = $req->fetchAll();
                            // description
                                foreach($tea as $description) 
                                echo $description['tea_lname'].'</br>'.$description['tea_fname'].'</br></br>';
                                ?>
                                </br> 
                        </div> 
                        <div >
                        </div> 
                    </div>
            </div>     
            <!-- intitulé -->  
          <!-- ---------Equipe pédago------------>
 



