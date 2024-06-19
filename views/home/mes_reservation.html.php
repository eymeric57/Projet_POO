<h1 class="text-center p-3 m-5 title">Mes reservation</h1>

<?php if (empty($reservations)) : ?>
    <p class="text-center p-3 m-5">Aucune réservation faites.</p>
<?php else : ?>
    <?php foreach ($reservations as $reservation) : ?>
        <div class="card d-flex flex-row m-3 w-25">
            <div class="card-body">
                <h3>Mon sejour</h3>
                <p class="card-title">Date d'arrivée : <?= ($reservation->date_start) ?></p>
                <p class="card-text">Date de fin : <?= ($reservation->date_end) ?></p>
                <p class="card-text">Prix total : <b><?= ($reservation->price_total) ?>€</b></p>
                
                <a onclick="return confirm('Voulez-vous vraiment supprimer cette réservation ?')" href="/delete/reservation/<?= htmlspecialchars($reservation->id) ?>" class="btn btn-danger">
                    <i class="bi bi-trash"></i>
                </a>
            </div>
        </div>
    <?php endforeach; ?>
<?php endif; ?>