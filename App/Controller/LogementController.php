<?php

namespace App\Controller;

use Core\View\View;
use App\AppRepoManager;
use App\Model\Logement;
use Core\Form\FormError;
use Core\Form\FormResult;
use Core\Session\Session;
use Core\Controller\Controller;
use Laminas\Diactoros\ServerRequest;

class LogementController extends Controller
{
    public function details(int $id): void
    {


        $view_data = [

            'logements' => AppRepoManager::getRm()->getLogementRepository()->getLogementById($id)
        ];
        $view = new View('home/details');


        $view->render($view_data);
    }


    public function addLogement()
    {


       
        $view = new View('home/add_logement');


        $view->render();
    }



    public function addLogementForm(ServerRequest $request)
    {

        $data_form = $request->getParsedBody();
        //on instancie formResult pour stocker les messages d'erreurs
        
        $form_result = new FormResult();
        //on doit crée une instance de User
        $logement = new Logement();
    

        $city = $data_form['city'] ;
        $country = $data_form['country'] ?? '';
        $zipCode = $data_form['zipCode'] ?? ''; 
        $price = $data_form['price']   ?? '';
        $description = $data_form['description'] ?? '';
        $title = $data_form['title'] ?? '';
        $size = $data_form['size'] ?? '';
        $nb_traveler = $data_form['nb_traveler'] ?? '';
        $nb_rooms = $data_form['nb_rooms'] ?? '';
        $nb_bed = $data_form['nb_bed'] ?? '';

       

        //on s'occupe de toute les vérifications
        if (
          empty($city) ||
          empty($country) ||
          empty($zipCode) ||
          empty($price) ||
          empty($description) ||
          empty($title) ||
          empty($size) ||
          empty($nb_traveler) ||
          empty($nb_rooms) ||
          empty($nb_bed)
        ) {
          $form_result->addError(new FormError('Veuillez remplir tous les champs'));
        }

        if ($form_result->hasErrors()) {
          Session::set(Session::FORM_RESULT, $form_result);
         
        }
    
      /**
       * méthode qui vérifie que l'email est du bon format
       * @param string $email
       * @return bool
       */
    }
   


    
}
