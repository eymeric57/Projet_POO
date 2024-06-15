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







}