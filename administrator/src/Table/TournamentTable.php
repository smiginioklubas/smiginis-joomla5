<?php

namespace Smiginis\Component\Smiginis\Administrator\Table;

defined('_JEXEC') or die;

use Joomla\CMS\Table\Table;
use Joomla\Database\DatabaseDriver;

class TournamentTable extends Table
{
    public function __construct(DatabaseDriver $db)
    {
        parent::__construct('#__smiginis_tournaments', 'id', $db);
    }
}