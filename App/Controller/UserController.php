<?php 
namespace App\Controller;
use Core\Controller\Controller;
use Core\View\View;

class UserController extends Controller 
{
  public function favoris()
  {
    $view = new View('home/favoris');

    $view->render();
  }


  public function mesBiens()
  {
    $view = new View('home/mesBiens');

    $view->render();
  }


  public function mesReservations()
  {
    $view = new View('home/mesReservations');

    $view->render();
  }

  


}