<?php

$inputfilename = "commonwealth.csv";
$templatefilename = "commonwealth.tpl";
$outputfilename = "commonwealth.html";
$imgheight = 80;


$rows = array();
$itemlist = "";

if (($handle = fopen($inputfilename, "r")) !== FALSE) {
    $itemlist .= "<ul>\n";
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        if (!empty($data[0])) {
            $itemlist .= format_row($data, $imgheight)  . "\n";
        }
    }
    $itemlist .= "</ul>\n";
    fclose($handle);
}

$template = file_get_contents($templatefilename);
$output = str_replace('%itemlist', $itemlist, $template);
file_put_contents($outputfilename, $output);

function format_row($row, $imgheight) {
    return sprintf('<li><a href="%s"><img src="%s" alt="%s" height="%d" width="%d"/></a></li>', $row[1], $row[0], $row[2], $imgheight, $imgheight*2);
}
