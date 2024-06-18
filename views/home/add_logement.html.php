<h1>** Ajout d'un logement **</h1>

<?php

use App\AppRepoManager;
use Core\Session\Session; ?>




<form action="/add_logement_form" method="POST">

  <input type="hidden" name="user_id" value="<?= Session::get(Session::USER)->id ?>">


  <div class="card adress d-flex flex-row p-3 gap-3 w-50">

    <div class="form-group">
      <label for="city">ville</label>
      <input type="text" class="form-control" id="city" aria-describedby="emailHelp" placeholder="Ville" name="city">

    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Pays</label>
      <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Pays" name="country">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">code postal</label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="code postal" name="zip_code">
    </div>


  </div>



  <div class="card adress d-flex flex-row p-3 gap-3 ">


    <div class="form-group">
      <label for="exampleInputPassword1">Prix par nuit</label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Prix par nuit" name="price_per_night">
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1">nombre de chambre</label>
      <input type="number" class="form-control" id="example
      nputPassword1" placeholder="Nombre de chambre" name="nb_rooms">
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1">nombre de lit </label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Nombre de lit" name="nb_bed">
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1">nombre de voyageur</label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Nombre de voyageur" name="nb_traveler">
    </div>
  </div>





    <div class="card adress d-flex flex-row p-3 gap-3 ">

      <div class="form-group">
       <label for="exampleInputPassword1">taille</label>
        <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Password" name="size">
      </div>
    </div>


     <div class="form-group">
        <label for="exampleInputPassword1">Description</label>
        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" name="description">
     </div>
      <div class="form-group">
        <label for="exampleInputPassword1">phone</label>
        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" name="phone">
      </div>
      <div class="form-group">
            <label for="exampleFormControlSelect1">Example select</label>
        <select name="type" class="form-control" id="exampleFormControlSelect1">
            <option>1</option>
          <option>2</option>
            <option>3</option>

        </select>



          <?php foreach (AppRepoManager::getRm()->getEquipementRepository()->getAllEquipement() as $equipement) :
                ?>
            <div class="list-ingredient-box-update">
            
              <div class="form-check form-switch ">
                <input name="equipements[]" value="<?= $equipement->id ?>" class="form-check-input" type="checkbox" role="switch">
                <label class="form-check-label footer-description m-1"><?= $equipement->label ?></label>
              </div>
            </div>
            <?php endforeach ?>

     

      </div>

    <div class="form-group">
      <label for="exampleInputPassword1">phone</label>
      <input type="file" class="form-control" id="exampleInputPassword1" placeholder="Password" name="img">
    </div>
     

        <div class="form-group">
          <label for="exampleInputPassword1">titre</label>
            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="titre" name="title">
        </div>

  <button type="submit" class="btn btn-primary">Submit</button>

</form>