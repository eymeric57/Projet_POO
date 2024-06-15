<h1>** Ajout d'un logement **</h1>

<?php use Core\Session\Session; ?>
<?php include(PATH_ROOT . 'views/_templates/_message.html.php') ?>



<form action="/add_logement_form" method="POST">
<input type="hidden" name="user_id" value="<?= Session::get(Session::USER)->id ?>">

  <div class="card adress d-flex flex-row p-3 gap-3">
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
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="code postal" name="zipCode">
    </div>

  </div>

  <div class="form-group">
      <label for="exampleInputPassword1">Prix par nuit</label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Prix par nuit" name="price">
    </div>

  <div class="form-group">
      <label for="exampleInputPassword1">nombre de chambre</label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Prix par nuit" name="nb_rooms">
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1">nombre de lit </label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Prix par nuit" name="nb_bed">
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1">nombre de voyageur</label>
      <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Prix par nuit" name="nb_traveler">
    </div>
  

  <div class="form-group">
    <label for="exampleInputPassword1">taille</label>
    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Password" name="size">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Description</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" name="description">
  </div>


  <div class="form-group">
    <label for="exampleInputPassword1">titre</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="titre" name="title">
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>