<?php 
namespace App\Controller;

use App\AppRepoManager;
use Core\View\View;
use Core\Form\FormResult;
use Core\Controller\Controller;
use Laminas\Diactoros\ServerRequest;

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


  public function mesReservationsByid(int $id)
  {

   $view_data = [

      'logements' => AppRepoManager::getRm()->getLogementRepository()->getLogementById($id)
  ];
  
    $view = new View('home/mesReservations/'.$id);

    $view->render($view_data);
  }


  public function addReservation(ServerRequest $request):void
  {
    $data_form = $request->getParsedBody();

    $form_result = new FormResult();


    $price = $data_form['price'];
    $start = $data_form['start'];
    $end = $data_form['end'];
    $user_id = $data_form['user_id'];


    $reservation_data = [
      'price_total' => $price,
      'date_start' => $start,
      'date_end' => $end,
      'user_id' => $user_id
    ];


        $reservation_data = AppRepoManager::getRm()->getReservationRepository()->insertReservation($reservation_data);

        self::redirect('/home/mes_Reservations/' . $user_id);

        

 
    
    //on redirige sur la page detail de la pizza
    

  }
  
  


}