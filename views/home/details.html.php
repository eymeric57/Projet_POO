<?php if (!$auth::isAuth()) $auth::redirect('/connexion') ?>

<?php

use Core\Session\Session; ?>


<h1>details</h1>


<h1><?= $logements->title ?></h1>
<div class="card-body justify-content-evenly  d-flex">
    <div class="d-grid gap-3 d-md-flex justify-content-md-end ">



        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <?php
                    $first = true;
                    foreach ($logements->medias as $media) :
                    ?>
                        <div class="carousel-item <?php if ($first) {
                                                        echo 'active';
                                                        $first = false;
                                                    } ?>" data-bs-interval="10000">
                            <img src="/assets/img/<?= $media->image_path ?>" class="d-block w-100" style="width=200px" alt=" ...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Slide label</h5>
                                <p>Some representative placeholder content for this slide.</p>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


    </div>
    <div class="d-flex flex-column">
        <p><?= $logements->description ?></p>
        <div class="card-body bg-light border rounded ">

            <p>Prix par nuit: <b><span id="nightPrice"> <?= $logements->price_per_night ?></span>€ </b></p>

            <p>nombre de chambre : <b> <?= $logements->nb_rooms ?></b> </p>

            <p>nombre de lit : <b> <?= $logements->nb_bed ?></b></p>

            <p>nombre de voyageur : <b> <?= $logements->nb_traveler ?></b></p>

            <p>taille : <b> <?= $logements->taille ?>m2</b></p>
        </div>


        <h2>Book your holiday</h2>


        <form action="/reservations" method="POST" onsubmit="copierSpanDansHidden()">
            <input type="hidden" name="user_id" value="<?= Session::get(Session::USER)->id ?>">

            <label for="start_date">Start</label>
            <input id="start_date" type="date" name="start" required />
            <label for="end_date">End</label>
            <input id="end_date" type="date" name="end" required />

            <h3>Total : <span id="total" name="price"></span> €</h3>
            <input type="hidden" id="champCache" name="price">

            <button class="button" type="submit">Reserver</button>

        </form>

    </div>

</div>