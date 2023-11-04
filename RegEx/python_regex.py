#!/usr/bin/python3

import re

pattern = re.compile(r'^([\d]{4,4})\-\d\d\-\d\d,(.+),(.+),(\d+),(\d+),.*$')

f = open("../RegEx/results.csv", "r", encoding="utf8")

#1877-03-05,Wales,Scotland,0,2,Friendly,Wrexham,Wales,FALSE
for line in f: 
    res = re.match(pattern, line) 
    if res: 
        total = int(res.group(4)) + int(res.group(5))
        if total > 10:
            print(f"Goals: {total}, {res.group(1)} {res.group(2)}, {res.group(3)} [{res.group(4)}-{res.group(5)}]")

f.close()