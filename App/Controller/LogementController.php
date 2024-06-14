<?php

namespace App\Controller;

use App\AppRepoManager;
use Core\Controller\Controller;
use Core\View\View;

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
}
