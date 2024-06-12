<?php 

namespace App\Repository;

use Core\Repository\Repository;

class FavoristRepository extends Repository
{
    public function getTableName(): string
    {
        return 'favoris';
    }
}