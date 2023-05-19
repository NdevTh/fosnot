
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../styles/style.css">

</head>

<body class="fontAcc">
    <header class="menu">
        <?php include('page/menu.php');?>
    </header>

    <main class="corps">
        <!-- <?php include('page/acceuil.php');?> -->

    <!-- connxion avec php -->
    <?php
        if(file_exists('../page/'.$_GET['page'].'.php')) {
            include('../page/'.$_GET['page'].'.php');}
            else{
                include('page/erreur.php');
            }
     //var_dump($_GET);
   //echo $_GET['page'];
    ?>
    <!-- connxion avec php -->

    </main>
        
    <footer class="foot">
    <?php include('page/footer.php');?>
    </footer>
    
</body>
</html>
