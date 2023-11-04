<?php

$file = fopen("../RegEx/results.csv", "r");

$match   = 0;
$nomatch = 0;

$t = time();

while(!feof($file)){
    $line = fgets($file);
    //1876-03-04,Scotland,England,3,0,Friendly,Glasgow,Scotland,FALSE
    if(preg_match(
        '/^(\d{4}\-\d\d\-\d\d),(.+),(.+),(\d+),(\d+),.*$/i',
        $line,
        $m
      )
    ) {
       if($m[4] == $m[5]) {
        echo "Tie: \t";
       } elseif($m[4] > $m[5]) {
        echo "Local: \t";
       } else {
        echo "Visitor: ";
       } 
       printf("\t%s, %s [%d-%d]\n", $m[2], $m[3], $m[4], $m[5]);
       $match++;
    } else {
       $nomatch++;
    }
}

fclose($file);

printf("\n\nmatch: %d\nno match: %d\n", $match, $nomatch);

printf("Time: %d\n", time() - $t);