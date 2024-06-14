<?php

namespace App\Repository;

use App\Model\Logement;
use App\Model\Media;
use Core\Repository\Repository;

class MediaRepository extends Repository
{
    public function getTableName(): string
    {
        return 'media';
    }

    public function getMediaById(int $logement_id): array
    {

        $array_result = [];

        //on crée la requete SQL
        $q = sprintf(
            'SELECT *
            FROM %s
            WHERE `logement_id` = :id',
            $this->getTableName()
        );

        //on prépare la requete
        $stmt = $this->pdo->prepare($q);

        //on vérifie que la requete est bien executée
        if (!$stmt) return $array_result;

        //on execute la requete en passant l'id de la pizza
        $stmt->execute(['id' => $logement_id]);

        while ($row = $stmt->fetch()) {
            $array_result[] = new Media($row);
        }


        //on retourne le tableau fraichement rempli
        return $array_result;
    }
}
