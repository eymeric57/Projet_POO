<?php 

namespace App\Repository;

use Core\Repository\Repository;

class FavorisRepository extends Repository
{
    public function getTableName(): string
    {
        return 'favoris';
    }
}