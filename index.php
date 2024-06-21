<?php require_once 'root/private/initialize.php';

$page = $twig->load('index.twig.html');

echo $page->render();
