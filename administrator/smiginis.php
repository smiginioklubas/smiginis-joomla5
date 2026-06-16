<?php

defined('_JEXEC') or die;

use Joomla\CMS\Factory;

$app = Factory::getApplication();

$component = $app->bootComponent('com_smiginis');

$component->getDispatcher($app)->dispatch();