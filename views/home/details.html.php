<h1>details</h1>

<div class="card">
    <div class="card-body">
        <h1><?= $logements->title ?></h1>
        <?php foreach ($logements->medias as $media) : ?>
            <img src="/assets/img/<?= $media->image_path ?>" alt="">
        <?php endforeach ?>
        <p><?= $logements->description ?></p>
    </div>

</div>