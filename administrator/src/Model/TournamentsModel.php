<?php

namespace Smiginis\Component\Smiginis\Administrator\Model;

\defined('_JEXEC') or die;

use Joomla\CMS\MVC\Model\ListModel;

class TournamentsModel extends ListModel
{
    protected function getListQuery()
    {
        $db = $this->getDatabase();

        $query = $db->getQuery(true)
            ->select('*')
            ->from($db->quoteName('#__smiginis_tournaments'))
            ->order('start_date DESC');

        return $query;
    }
}