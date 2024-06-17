<?php 
namespace App\Controller;

use Core\View\View;
use App\AppRepoManager;
use Core\Form\FormResult;
use Core\Session\Session;
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

        self::redirect('/');
    
    //on redirige sur la page detail de la pizza

  }


  public function getReservation(int $id): void
  {
    

       $view_data = [
        'reservations'=> AppRepoManager::getRm()->getReservationRepository()->getReservationByUserId($id)
      ];
      $view = new View('home/mes_reservation/' . $id);


      $view->render($view_data);
  }


  public function addLogement(ServerRequest $request):void
  {
    $data_form = $request->getParsedBody();

    $form_result = new FormResult();

    $user_id = $data_form['user_id'];
    $city = $data_form['city'];
    $country = $data_form['country'];
    $zipCode = $data_form['zip_code']; 
    $price = $data_form['price_per_night'];
    $description = $data_form['description'];
    $title = $data_form['title'];
    $size = $data_form['size'];
    $nb_traveler = $data_form['nb_traveler'];
    $nb_rooms = $data_form['nb_rooms'];
    $nb_bed = $data_form['nb_bed'];
    $type = $data_form['type'];
    $phone = $data_form['phone'];
    $img = $data_form['img'];
    

  

  



    $reservation_data_adress = [
      'adress' => $city,
      'country' => $country,
      'zip_code' => $zipCode,
      'phone' => $phone
      
    ];

    $adress_id = AppRepoManager::getRm()->getAdressRepository()->insertAdress($reservation_data_adress );

    


    $reservation_data = [
      'user_id' =>$user_id,
          
          'price_per_night' => $price,
          'description' => $description,
          'title' => $title,
          'taille' => $size,
          'nb_traveler' => $nb_traveler,
          'nb_rooms' => $nb_rooms,
          'nb_bed' => $nb_bed,
          'is_active' => 1,
          'type_id' => $type,
          'address_id' => intval($adress_id)
        
    
    
        ];

    $reservation_logement_id = AppRepoManager::getRm()->getLogementRepository()->insertLogement($reservation_data);


    $image_data = [
      'logement_id' => $reservation_logement_id,
      'image_path' => $data_form['img']
    ];
   
$image_data = AppRepoManager::getRm()->getMediaRepository()->insertMedia($image_data);

          self::redirect('/');
     


  }


  public function getReservationById(int $id): void
  {
    

       $view_data = [
        'reservations'=> AppRepoManager::getRm()->getReservationRepository()->getReservationByUserId($id)
      ];
      $view = new View('home/mes_reservation/' . $id);


      $view->render($view_data);
  }



  





  


}