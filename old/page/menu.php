<?php
    if(isset($_SESSION['nom']) && $_SESSION['nom'] != "") {?>Bonjour <?php echo $_SESSION['nom'];?>
    <br/><br/><?php }?>
            <ul class="menuNav">
            <li class="menuNav acceuil"><a class="" href="/index.php?page=accueil" ><img class="logo"src="./image/logo_negatif.png"></a></li>
            <!-- <li><a class="pMenu" href="/page/acceuil.php">COURS </a></li> -->
            <li><a class="pMenu" href="/index.php?page=cours">COURS </a></li>
            <li><a class="pMenu" href="/index.php?page=evenement">EVENEMENT </a></li>
            <!-- <li><a class="pMenu" href="/index.php?page=inscription">INSCRIPTION </a></li> -->
            <li><a class="pMenu" href="/index.php?page=contact">CONTACT </a></li>
            <li> <?php
                if(!isset($_SESSION['nom'])||$_SESSION['nom'] == "") {
            ?>
            <!-- <a class="pMenu" href="/index.php?page=login">Login</a> -->
            <?php }  else {?>
            <a class="pMenu" href="index.php?page=accueil&action=deco">Déconnection</a>
            <!-- Il faut se connecter pour avoir la liste -->
            <a class="pMenu" href="index.php?page=admin">Admin</a>
            <?php } ?></li>
            </ul>

