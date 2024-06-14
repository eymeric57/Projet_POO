

<h1 class="text-center">Les locations disponibles</h1>
<?php 
foreach ($logements as $logement) : ?>
<div class="card" style="width: 18rem;">
    <div class="card-body width-150">
        <?php foreach($logement->medias AS $media): ?>
        <img src="/assets/img/<?= $media ?>" class="card-img-top" alt="">
        <?php endforeach ?>
        <h5 class="card-title"><?= $logement->title?> <span class="text-primary" style="width: 5rem;">&hearts;</span></h5>
        <p class="card-text"><?= $logement->description?></p>
        <a href="/details<?=$logement->id?>" class="btn btn-primary">Details</a>
    </div>
</div>

<?php endforeach ?>