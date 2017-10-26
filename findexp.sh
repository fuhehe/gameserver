#!/bin/bash

find . -iname \*.[ch] -exec grep -wnH --color $1 \{\} \;
find . -iname \*.cpp -exec grep -wnH --color $1 \{\} \;
