#!/bin/bash
# convert fb input from stdin to json
rm -f queryfb.pl
cat - >queryfb.pl
temp=`which f2j`
bindir=`dirname ${temp}`
swipl -q -g "consult(\"${bindir}/query.pl\")." -g 'pall.' -g 'halt.'
