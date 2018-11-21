#!/bin/bash
files=`/Users/seunoboru/Downloads/qrsctl.dms listprefix blog ''`
i=0
echo $files | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        /Users/seunoboru/Downloads/qrsctl.dms get blog $line ./$line
    fi
    i=$(($i+1))
done
