<!-- <?php
    if (isset($_POST['subbtn'])){       
        echo $_POST['idnom'];
    }
    ?> -->
<h2>Connectez-vous</h2>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Valider</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/page/admin.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label for="uname"><b>Identifiant</b></label>
      <input type="text" placeholder="Entrer l'identifiant " name="login" >

      <label for="psw"><b>Mot de passe</b></label>
      <input type="password" placeholder="Entrer le mot de passe" name="cmdp" >
        
      <input type="submit" name="subbtn" value="Soumettre"></br>
     
    </div>

   
  </form>
</div>
</div> 



