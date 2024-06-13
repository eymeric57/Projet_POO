<?php

namespace App;

use App\Repository\AdressRepository;
use App\Repository\EquipementRepository;
use App\Repository\FavoristRepository;
use App\Repository\LogementEquipementRepository;
use App\Repository\LogementRepository;
use Core\Repository\RepositoryManagerTrait;

class AppRepoManager
{
  //on récupère le trait RepositoryManagerTrait
  use RepositoryManagerTrait;

  //on déclare une propriété privée qui va contenir une instance du repository
// exemple: private Repository $Repository;

private AdressRepository $adressRepository;
private EquipementRepository $equipementRepository;
private FavoristRepository $favorisRepository;
private LogementRepository $logementRepository;
private LogementEquipementRepository $logementEquipementRepository;
private MediaRepository $mediaReposi
  //on crée ensuite les getter pour accéder à la propriété privée
  //exemple: public function getRepository(): Repository
  //{
  //  return $this->Repository;
  //}

  //enfin, on declare un construct qui va instancier les repositories
  protected function __construct()
  {
    $config = App::getApp();
    //on instancie le repository
    //exemple: $this->Repository = new Repository($config);
  }
}
