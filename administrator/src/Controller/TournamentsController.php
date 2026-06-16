<?php

namespace Smiginis\Component\Smiginis\Administrator\Controller;

\defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\AdminController;

class TournamentsController extends AdminController
{
    public function getModel($name = 'Tournament', $prefix = 'Administrator', $config = ['ignore_request' => true])
    {
        return parent::getModel($name, $prefix, $config);
    }
}