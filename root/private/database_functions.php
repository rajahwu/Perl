<?php
// database_functions.php
function db_connect() {
    $connection = new mysqli(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
    // var_dump($connection);
    confirm_db_connect($connection);
    return $connection;
}

function confirm_db_connect($connection) {
    if($connection->connect_errno) {
        $msg = "Database connection failded: ";
        $msg .= $connection->connect_error;
        $msg .= "(" . $connection->connect_errno . ")";
        exit($msg);
    }
}
