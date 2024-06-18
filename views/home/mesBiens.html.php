<h1>mes biens</h1>



<thead>

    <tr>


        <?php

        use App\Model\Logement; ?>

        <?php foreach ($logements as $reservation): ?>


            <div class="card d-flex flex-row m-3 w-25">

                <div class="card-body  ">
                    <h5 class="card-title">logement :  <?= $reservation->title?></h5>
                    <p class="card-text">Prix par <?= $reservation->price_per_night?></p>
                    <p class="card-text">Prix total : <b><?= $reservation->price_total ?>€</b></p>

                    <a onclick="return confirm('Voulez vous vraiment supprimer cette pizza')" href="/delete/<?= $reservation->id ?>" class="btn btn-danger"><i class="bi bi-trash"></i></a>
                    
                </div>
            </div>




        <?php endforeach ?>