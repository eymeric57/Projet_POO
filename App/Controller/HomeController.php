<?php 

namespace App\Controller;

use App\AppRepoManager;
use Core\Controller\Controller;
use Core\View\View;

class HomeController extends Controller 
{
  public function home(): void
  {


    $view_data = [

      'logement' => AppRepoManager::getRm()->getLogementRepository()->getAllLogement()
    ];

    $view = new View('home/home');

    $view->render($view_data);
  }



  
}