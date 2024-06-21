<?php

$content = [
    "welcome to the perl training server",
    "checkout the webapp",
    "checkout training apps"
];

foreach($content as $c) {
    echo div($c);
}

function div($content, $classnames = "") {
    return "<div class=\"" . $classnames . "\">" . $content . "</div>\n";
}
