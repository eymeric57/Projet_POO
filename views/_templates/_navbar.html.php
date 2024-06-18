<?php

use Core\Session\Session; ?>
<div class="d-flex justify-content-between text-align-center  align-items-center">
  <!-- logo -->
  <div class="nav-logo">
    <a href="/">

      <img src="/assets/img/logo.png" height="100px" alt="logo de l'appli">

    </a>
  </div>

  <!--  barre de navigation -->
  <div>
    <nav>
      <ul class="d-flex justify-content-center">
        <li class="m-1"><a href="/">Accueil</a></li>
        <li class="m-1"><a href="/favoris">Mes favoris</a></li>
      </ul>
    </nav>
  </div>

  <!-- menu du profil -->
  <div class="nav-profil">
    <nav class="custom-nav-profil ">
      <ul class="custom-ul-profil">
        <li class="custom-link">
          <!-- si je suis en session j'affiche mon compte -->
          <?php if ($auth::isAuth()) : ?>




            <div class="d-flex text-align-center align-items-center space-between">
              <label class="relative ">
                <input id="switchBtn" type="button" />
                <div id="slider" class="slider"></div>
                <span id="choice">Voyageur</span>
              </label>

              <div class="dropdown custom-link" id="nav1">
                <a class="dropdown-toggle button btn-secondary" href="" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                  Mon compte
                  <i class="bi bi-person custom-svg"></i>
                </a>
                <ul class="dropdown-menu " aria-labelledby="dropdownMenuLink">
                  <li><a class="dropdown-item custom-link" href="/favoris">Mes Favoris</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li><a class="dropdown-item custom-link" href="/favoris">Mon profil</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>

        </li>
        <li><a class="dropdown-item custom-link" href="/mes_reservation/<?= Session::get(Session::USER)->id ?>">Mes réservation</a></li>
        <li>
          <hr class="dropdown-divider">
        </li>
        </li>
        <li><a class="dropdown-item custom-link" href="/logout">Me déconnecter</a></li>
      </ul>
  </div>



  <div class="dropdown custom-link" id="nav2">
    <a class="dropdown-toggle button btn-secondary" href="" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
      Mon compte
      <i class="bi bi-person custom-svg"></i>
    </a>
    <ul class="dropdown-menu " aria-labelledby="dropdownMenuLink">
      <li><a class="dropdown-item custom-link" href="/add_logement">Ajouter un bien</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item custom-link" href="/mesBiens/<?= Session::get(Session::USER)->id ?>">Mes annonces</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item custom-link" href="/mes_reservation/<?= Session::get(Session::USER)->id ?>">Mes réservation</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item custom-link" href="">yoooour</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item custom-link" href="/logout">Me déconnecter</a></li>
    </ul>
  </div>


</div>





<?php elseif ($auth::isAuth()) : ?>

  <div class="dropdown custom-link">
    <a class="dropdown-toggle btn btn-secondary" href="" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
      Mon compte
      <i class="bi bi-person custom-svg"></i>
    </a>
    <ul class="dropdown-menu " aria-labelledby="dropdownMenuLink">

      <li><a class="dropdown-item custom-link" href="/mesReservations">Mes réservation</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item custom-link" href="">Mode ihjijiur</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item custom-link" href="">Me déconnecter</a></li>
    </ul>
  </div>


<?php else : ?>

  <a href="/connexion"> <button class="btn button ">Se connecter
      <i class="bi bi-person custom-svg"></i> </button>
  </a>

<?php endif ?>
</li>
</ul>

</nav>
</div>


</div>

<script>
  const switchBtn = document.getElementById("switchBtn");
  const slider = document.getElementById("slider");
  const choice = document.getElementById("choice");
  let bool = true;

  switchBtn.addEventListener("click", () => {
    switchBtn.classList.toggle("active");
    slider.classList.toggle("active");
    choice.classList.toggle("active");
    nav2.classList.toggle("active");
    nav1.classList.toggle("active");
    choice.textContent = choice.classList.contains("active") ?
      "Loueur" :
      "Voyageur";
  });
</script>