<h1>mes biens</h1>


        <?php

        use App\Model\Logement; ?>

        <?php foreach ($logements as $reservation): ?>


            <div class="card d-flex flex-row m-3 w-25">

                <div class="card-body  ">
                    <h5 class="card-title">logement :  <?= $reservation->title?></h5>
                  
                    <p class="card-text">Prix par nuit: <b><?= $reservation->price_per_night ?>€</b></p>

                    <a onclick="return confirm('Voulez vous vraiment supprimer votre logement')" href="/delete/<?= $reservation->id ?>" class="btn btn-danger"><i class="bi bi-trash"></i> Suprimmer mon Logement</a>

                   
                    
                </div>
            </div>




        <?php endforeach ?>


