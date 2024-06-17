<h1>mes reservation</h1>

<thead>

    <tr>





        <?php

        use App\Model\Reservation; ?>

        <?php foreach ($reservations as $reservation) : ?>

            <div class="card d-flex flex-row m-3 w-25">

                <div class="card-body  ">
                    <h5 class="card-title">Date d'arriver : <?= $reservation->date_start ?></h5>
                    <p class="card-text">Date de fin : <?= $reservation->date_end ?></p>
                    <p class="card-text">Prix total : <b><?= $reservation->price_total ?>€</b></p>
                    <button class="button">Annuler</button>
                </div>
            </div>




        <?php endforeach ?>