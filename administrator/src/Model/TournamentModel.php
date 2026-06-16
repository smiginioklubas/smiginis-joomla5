<?php

namespace Smiginis\Component\Smiginis\Administrator\Model;

\defined('_JEXEC') or die;

use Joomla\CMS\MVC\Model\AdminModel;

class TournamentModel extends AdminModel
{
    public function getTable($type = 'Tournament', $prefix = '', $config = [])
    {
        return parent::getTable($type, 'Smiginis\\Component\\Smiginis\\Administrator\\Table\\', $config);
    }
}