#!/usr/bin/perl

use strict;
use warnings;

my $t = time;

open(my $f,"<../RegEx/results.csv") or die ("There aren't any files");

my $match   = 0;
my $nomatch = 0;

while(<$f>){
    chomp;
    # 2018-06-03,Spain,Switzerland,1,1,Friendly,Vila-real,Spain,FALSE
    if(m/^([\d]{4,4})\-.*?,(.*?),(.*?),(\d+),(\d+),.*$/){
        if($5 > $4){
            printf("%s: %s (%d) - (%d) %s\n", $1, $2, $4, $5, $3);
        }
        #print $_."\n";
        $match++;
    }   else{
        $nomatch++;
    }
}

close($f);

printf("There were found: \n - %d matches\n - %d no matches\nLasted %d seconds", $match, $nomatch, time() - $t);