<?php 

namespace App\Repository;

use App\Model\Reservation;
use Core\Repository\Repository;

class ReservationRepository extends Repository
{
    public function getTableName(): string
    {
        return 'reservation';
    }




    public function insertReservation(array $data)
    {
        $q = sprintf(
            "INSERT INTO %s (`price_total`, `date_start`, `date_end`, `user_id`) VALUES (:price_total, :date_start, :date_end, :user_id)",
            $this->getTableName()
        );

        $stmt = $this->pdo->prepare($q);

        if(!$stmt) return false;

        $stmt->execute($data);


        
    }

    public function getReservationByUserId( $id)
    {

        $array_result = [];

        $q = sprintf(
            "SELECT * FROM %s WHERE user_id = :id",
            $this->getTableName()
        );

        $stmt = $this->pdo->query($q);
    //on vérifie que la requete est bien executée
    if (!$stmt) return $array_result;
    //on récupère les données que l'on met dans notre tableau
    while ($row_data = $stmt->fetch()) {

      //a chaque passage de la boucle on instancie un objet pizza
      $logement = new Reservation($row_data);

      $array_result[] = $reservation;
    }
    }







}