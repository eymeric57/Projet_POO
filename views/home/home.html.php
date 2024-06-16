

<h1 class="text-center">Les locations disponibles</h1>

<nav class="navbar navbar-expand-lg bg-body-tertiary w-50 m-auto">
  <div class="container-fluid">
  <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-danger" type="submit"><i class="bi bi-search"></i></button>
      </form>
    
   
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Link
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      
      </ul>
      
    </div>
  </div>
</nav>

<?php foreach ($logements as $logement) : ?>
  <div class="card" style="width: 18rem;">
      <div class="card-body width-150">
          <?php 
          if (!empty($logement->medias)) {
              // Get the first media
              $media = $logement->medias[0];
              ?>
              <img src="/assets/img/<?= $media ?>" class="card-img-top" alt="">
              <?php
          }
          ?>
          <h5 class="card-title"><?= $logement->title ?> <span class="text-primary" style="width: 5rem;">&hearts;</span></h5>
          <p class="card-text"><?= $logement->description ?></p>
          <a href="/details<?= $logement->id ?>" class="btn btn-primary">Details</a>
      </div>
  </div>
  <?php endforeach; ?>