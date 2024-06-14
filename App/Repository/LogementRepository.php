<?php

namespace App\Repository;

use App\AppRepoManager;
use App\Model\Logement;
use Core\Repository\Repository;

class LogementRepository extends Repository
{
  public function getTableName(): string
  {
    return 'logement';
  }






  //fonction qui récupére toute les locations 


  public function getAllLogement(): ?array
  {
    //on déclare un tableau vide
    $array_result = [];

    //on crée la requête SQL
    $q = sprintf(
      'SELECT l.`id`, l.`title`, l.`description`,l.`price_per_night`, l.`nb_bed`, l.`nb_traveler`, l.`is_active`, l.`type_id`, l.`user_id`, m.`image_path`
        FROM %1$s AS l
        INNER JOIN %2$s AS m 
        ON l.`id` = m.`logement_id`
        WHERE`is_active` = 1
        ',
      $this->getTableName(), //correspond au %1$s
      AppRepoManager::getRm()->getMediaRepository()->getTableName()

    );

    //on peut directement executer la requete
    $stmt = $this->pdo->query($q);
    //on vérifie que la requete est bien executée
    if (!$stmt) return $array_result;
    //on récupère les données que l'on met dans notre tableau
    while ($row_data = $stmt->fetch()) {

      //a chaque passage de la boucle on instancie un objet pizza
      $logement = new Logement($row_data);
      $logement->medias[] = $row_data['image_path'];
      $array_result[] = $logement;
    }
    //on retourne le tableau fraichement rempli
    return $array_result;
  }


  public function getLogementById(int $logement_id): ?Logement
  {
    //on crée la requete SQL
    $q = sprintf(
      'SELECT * FROM %s WHERE `id` = :id',
      $this->getTableName()
    );

    //on prépare la requete
    $stmt = $this->pdo->prepare($q);

    //on vérifie que la requete est bien préparée
    if (!$stmt) return null;

    //on execute la requete en passant les paramètres
    $stmt->execute(['id' => $logement_id]);

    //on récupère le résultat
    $result = $stmt->fetch();

    //si je n'ai pas de résultat, je retourne null
    if (!$result) return null;

    //si j'ai un résultat, j'instancie un objet Pizza
    $logement = new Logement($result);

    //on va hydrater les ingredients de la pizza
    $logement->medias = AppRepoManager::getRm()->getMediaRepository()->getMediaById($logement_id);

    //je retourne l'objet Pizza
    return $logement;
  }
}
