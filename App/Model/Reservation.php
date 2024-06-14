<?php 

namespace App\Model;

use Core\Model\Model;


class Reservation extends Model
{
 
  public float $date_start;
  public float $date_end;
  public int $nb_adult;
  public int $nb_child;
  public int $price_total;


  public int $logement_id;
  public int $user_id;


  public ?User $user;
  public ?Logement $logement;
 
 
}