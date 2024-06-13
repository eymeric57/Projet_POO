<?php 

namespace App\Repository;

use App\Model\Logement;
use Core\Repository\Repository;

class LogementRepository extends Repository
{
    public function getTableName(): string
    {
        return 'logement';
    }






//fonction qui récupére toute les locations 


    public function getAllLogement(): array
    {
      //on déclare un tableau vide
      $array_result = [];
  
      //on crée la requête SQL
      $q = sprintf(
        'SELECT *
        FROM %s 
       
        WHERE`is_active` = 1
        ',
        $this->getTableName(), //correspond au %1$s
       
      );
  
      //on peut directement executer la requete
      $stmt = $this->pdo->query($q);
      //on vérifie que la requete est bien executée
      if (!$stmt) return $array_result;
      //on récupère les données que l'on met dans notre tableau
      while ($row_data = $stmt->fetch()) {
        //a chaque passage de la boucle on instancie un objet pizza
        $array_result[] = new Logement($row_data);
      }
      //on retourne le tableau fraichement rempli
      return $array_result;
    }








}