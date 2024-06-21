<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

ob_start(); // turn on output buffering

// session_start(); // turn on sessions if needed

// Assign file paths to PHP constants
// __FILE__ returns the current path to this file
// dirname() returns the path to the parent directory
define("PRIVATE_PATH", dirname(__FILE__));
define("PROJECT_PATH", dirname(PRIVATE_PATH, 2));
define("ROOT_PATH", dirname(PRIVATE_PATH, 1));
define("PUBLIC_PATH", ROOT_PATH . '/public');
define("SHARED_PATH", ROOT_PATH . '/shared');

// Assign the root URL to a PHP constant
// * Do not need to include the domain
// * Use same document root as webserver
// * Can set a hardcoded value:
// define("WWW_ROOT", '/~kevinskoglund/chain_gang/public');
// define("WWW_ROOT", '');
// * Can dynamically find everything in URL up to "/public"
$public_end = strpos($_SERVER['SCRIPT_NAME'], '/public') + 7;
$doc_root = substr($_SERVER['SCRIPT_NAME'], 0, $public_end);
define("WWW_ROOT", $doc_root);

// Include the Composer autoload file
require_once PROJECT_PATH . '/vendor/autoload.php';

require_once('functions.php');
// require_once('db_credentials.php');
// require_once('database_functions.php');

// Load class definitions manually

// -> Individually
// require_once('classes/bicycle.class.php');

// -> All classes in directory
foreach (glob('classes/*.class.php') as $file) {
    require_once($file);
}

// Autoload class definitions
function my_autoload($class) {
    if (preg_match('/\A\w+\Z/', $class)) {
        include('classes/' . $class . '.class.php');
    }
}
spl_autoload_register('my_autoload');

// $database = db_connect();

$loader = new \Twig\Loader\FilesystemLoader(SHARED_PATH . '/templates');
$twig = new \Twig\Environment($loader);
