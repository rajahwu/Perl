<?php require_once 'root/private/initialize.php';

$page = $twig->load('index.twig');

echo $page->render();
