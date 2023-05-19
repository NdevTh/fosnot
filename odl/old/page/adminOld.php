<?php
    // stocker une connection dans une variable -> connection à la database
    $bdd = new PDO('mysql:host=localhost;dbname=bbdfosnot','root','');
    // requete
        $req ="SELECT * FROM `manifestation` WHERE YEAR (`dateDescription`) = 
        '".$_POST['filtryear']."' ORDER BY  `".$_POST['column']."` ".$_POST['tri'] ;
    // lancer la requete et mettre le résultat dans le $res
        $res = $bdd->query($req);
        // Transformatoion de la requete en tableau
        // $tbl = $res->fetchAll(); // le serveur de fichier qui fait le traitement (serveur client);
        // var_dump($tbl);
?>


        <a href="index.php?page=add_form" target ="_blanck" ><button>Nouveau</button></a><br/>
        <a href="index.php?page=add_form" target ="_blanck" ><input type="button" name = "add" value ="+"></a><br/>
<table>
        <?php
            // foreach c'est chaque ligne du tableau
            foreach ($tbl as $key => $value) {
            echo   "<tr>
                        <td><a href='index.php?page=updt_form&id_act=".$value['idManif']."'>Modifier</a>
                        <a href='index.php?page=supp_form&id_act=".$value['idManif']."'>Supprimer</a>                        </td> 
                        <td>".$value['dateDescription']." </td> 
                        <td>".$value['titre']."</td> 
                        <td>".$value['description']."</td> 
                        <td>".$value['images']."</td> 
                        <td><a href='index.php?page=supp_form&id_act=".$value['idManif']."'>Supprimer</a></td> 
                    </tr>" ;
                            }  
   
        ?>
</table>

        