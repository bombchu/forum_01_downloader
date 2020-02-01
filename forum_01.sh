#!/bin/bash

myNum=1560

for (( c=1; c<99; c++ ))
do 
        mydir="2019_$(printf '%04d' $myNum )"

        mkdir $mydir

        sleep 1

        cd $mydir

        wget -U "Opera 11.0" --page-requisites --content-on-error --no-clobber --convert-links --restrict-file-names=windows --no-host-directories --wait=3 --random-wait --no-parent "https://www.apple.com/topic204237-$myNum.html"

        myNum=$(($myNum - 15))

        cd ..
done
