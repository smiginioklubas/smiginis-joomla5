<?php

defined('_JEXEC') or die;

error_reporting(E_ALL);
ini_set('display_errors', 1);

use Joomla\CMS\Factory;

$app = Factory::getApplication();

try {
    $component = $app->bootComponent('com_smiginis');
    $component->getDispatcher($app)->dispatch();
} catch (\Throwable $e) {

    echo '<pre>';
    echo 'ERROR: ' . $e->getMessage() . PHP_EOL . PHP_EOL;
    echo $e->getTraceAsString();
    echo '</pre>';
}