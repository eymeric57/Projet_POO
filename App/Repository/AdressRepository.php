<?php 

namespace App\Repository;

use Core\Repository\Repository;

class AdressRepository extends Repository
{
    public function getTableName(): string
    {
        return 'adress';
    }
}